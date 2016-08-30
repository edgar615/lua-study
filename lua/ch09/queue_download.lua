require "socket"

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
download(host, "/TR/html401/html40.txt")
download(host, "/TR/2002/REC-xhtml1-20020801/xhtml1.pdf")
download(host, "/TR/REC-html32.html")