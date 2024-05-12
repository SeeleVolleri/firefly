# Rockchip RK3588s 4GB-32GB GBE NVMe SATA USB3 WiFi
BOARD_NAME="Firefly ITX-3588J"
BOARDFAMILY="rockchip-rk3588"
BOARD_MAINTAINER=""
KERNEL_TARGET="current,edge"
FULL_DESKTOP="yes"
BOOT_LOGO="desktop"
BOOT_FDT_FILE="rockchip/rk3588s-roc-pc.dtb"
SRC_EXTLINUX="yes"
SRC_CMDLINE="console=ttyS02,1500000 console=tty0"
BOOT_SOC="rk3588"
IMAGE_PARTITION_TABLE="gpt"

# Override family config for this board; let's avoid conditionals in family config.
function post_family_config__stationm3_use_vendor_uboot() {
	BOOTCONFIG="rk3588_defconfig"
	BOOTSOURCE='https://github.com/150balbes/u-boot-rk'
	BOOTBRANCH='branch:rk3588'
	BOOTDIR="u-boot-${BOARD}"
	BOOTPATCHDIR="u-boot-station-p2"
}
