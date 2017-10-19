require recipes-devtools/go/go-common.inc

# Fix LICENSE
LIC_FILES_CHKSUM = "file://${WORKDIR}/go-${PV}/go/LICENSE;md5=5d4950ecb7b26d2c5e4e7b4e0dd74707"

GO_TAG = "1_8"

SRC_URI = "${SRC_URI_PREFIX}/go${PV}.src.tar.gz;name=go_${GO_TAG};subdir=go-${PV}"
SRC_URI[go_1_8.md5sum] = "7743960c968760437b6e39093cfe6f67"
SRC_URI[go_1_8.sha256sum] = "406865f587b44be7092f206d73fc1de252600b79b3cacc587b74b5ef5c623596"

SRC_URI += " \
		file://armhf-elf-header.patch \
		file://syslog.patch \
		file://fix-target-cc-for-build.patch \
		file://fix-cc-handling.patch \
		file://split-host-and-target-build.patch \
		file://gotooldir.patch \
    "
