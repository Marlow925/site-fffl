GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-14 \
	gluon-alfred \
	gluon-respondd \
	gluon-autoupdater \
	gluon-setup-mode \
	gluon-config-mode-core \
	gluon-config-mode-autoupdater \
	gluon-config-mode-hostname \
	gluon-config-mode-mesh-vpn \
	gluon-config-mode-geo-location \
	gluon-config-mode-contact-info \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-luci-admin \
	gluon-luci-autoupdater \
	gluon-luci-portconfig \
	gluon-luci-private-wifi \
	gluon-luci-wifi-config\
	gluon-next-node \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	gluon-status-page \
	iwinfo \
	iptables \
	haveged

DEFAULT_GLUON_RELEASE := exp-2016.1.5-0_11s_mesh
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)


#set "DEFAULT_GLUON_BRANCH = branch" to enable autoupdate on by default
#DEFAULT_GLUON_BRANCH = experimental
#GLUON_BRANCH ?= $(DEFAULT_GLUON_BRANCH)
#export GLUON_BRANCH

#set "GLUON_PRIORITY ?= days" to set the maximum number of days the autoupdater will wait until it pulls an autoupdate
GLUON_PRIORITY ?= 0

GLUON_TARGET ?= ar71xx-generic
export GLUON_TARGET
#if you want to build the other targets specify them in make GLUON_TARGET= at build time

#ath10k devices cant mesh on "ibss" and "11s" at the same time so one needs to be choosen or images wont be build. 
GLUON_ATH10K_MESH ?= ibss

GLUON_LANGS ?= en de da
