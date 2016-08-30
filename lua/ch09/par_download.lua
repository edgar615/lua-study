require "socket"

threads = {}

function get(host, file)
    local co = coroutine.create(function()
        download(host, file)
    end)
    table.insert(threads, co)
end

function dispatch()
    local i = 1
    while true do
        if threads[i] == nil then
            if threads[1] == nil then
                break
            end
            i = 1
        end
        local status, res = coroutine.resume(threads[i])
        if not res then
            table.remove(threads, i)
        else
            i = i +1
        end
    end
end

function download(host, file)
    local c = assert(socket.connect(host, 80))
    local count = 0
    c:send("GET " .. file .. " HTTP/1.0\r\n\r\n")

    while true do
        local s, status, partial = receive(c)
        count= count + #(s or partial)
        if status == "closed" then
            break
        end
    end
    c:close()
    print(file, count)
end

function receive(conn)
    return conn:receive(2^10)
end

local host = "www.w3.org"
get(host, "/TR/html401/html40.txt")
get(host, "/TR/2002/REC-xhtml1-20020801/xhtml1.pdf")
get(host, "/TR/REC-html32.html")

dispatch()