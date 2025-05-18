module("luci.controller.fzu", package.seeall)

function index()
    entry({"admin", "services", "fzu"}, alias("admin", "services", "fzu", "post"), _("福州大学认证"), 99).index = true
    entry({"admin", "services", "fzu", "post"}, cbi("fzu"), _("认证设置"), 1)
    entry({"admin", "services", "fzu", "log"}, cbi("fzu_log"), _("认证日志"), 2)
    entry({"admin", "services", "fzu", "status"}, call("act_status")).leaf = true

end

function act_status()
	local e = {}
	e.running = luci.sys.call("ps | grep fzu | grep -v grep >/dev/null") == 0
	luci.http.prepare_content("application/json")
	luci.http.write_json(e)
end

