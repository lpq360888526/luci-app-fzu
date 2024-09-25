#
# Copyright (C) 2008-2014 The LuCI Team <luci@lists.subsignal.org>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=fzu web for luci
LUCI_DEPENDS:=
LUCI_PKGARCH:=all
PKG_VERSION:=1.2
PKG_RELEASE:=3

include $(TOPDIR)/feeds/luci/luci.mk
# call BuildPackage - OpenWrt buildroot signature
