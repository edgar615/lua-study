local corp = {
  web = "www.google.com", --索引为字符串 web
  telephone = '123456',
  staff = {"Jack", "Scott", "Gary"},--索引为字符串，值也是一个表
  100876, --相当于[1] = 100876,索引为数字
  100191,--相当于[1]  100191,索引为数组
  [10] = 360,--直接把数字索引给出，相当于[10]=360
  ["city"] = "beijing" --索引为字符串
}

print(corp.web)
print(corp['telephone'])
print(corp[2])
print(corp["city"])
print(corp.staff[1])
print(corp[10])
print(corp[10])