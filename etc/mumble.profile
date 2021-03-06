# mumble profile
noblacklist ${HOME}/.config/Mumble
noblacklist ${HOME}/.local/share/data/Mumble
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc

mkdir ${HOME}/.config/Mumble
mkdir ${HOME}/.local/share/data/Mumble
whitelist ${HOME}/.config/Mumble
whitelist ${HOME}/.local/share/data/Mumble
include /etc/firejail/whitelist-common.inc

caps.drop all
netfilter
nonewprivs
nogroups
noroot
protocol unix,inet,inet6
seccomp
shell none
tracelog

private-bin mumble
private-tmp
