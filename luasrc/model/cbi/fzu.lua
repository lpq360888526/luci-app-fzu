local i = require "luci.sys"

m = Map("fzu", translate("福州大学校园网认证"))
m:section(SimpleSection).template = "fzu/fzu"

e = m:section(TypedSection, "fuzhou", translate(""))
e.addremove = false
e.anonymous = true

o1 = e:option(Flag, "enabled", translate("启用/开机自启"))
o1.rmempty = false

o2 = e:option(Value, "user_account", translate("账号"))

o3 = e:option(Value, "user_password", translate("密码"))
o3.password = true


o5 = e:option(Value, "time", translate("网络检测间隔"), translate("以秒为单位"))

m:section(SimpleSection).template = "fzu/fzu_button"

local apply = luci.http.formvalue("cbi.apply")
if apply then
	io.popen("/etc/init.d/fzu start")
end

return m

