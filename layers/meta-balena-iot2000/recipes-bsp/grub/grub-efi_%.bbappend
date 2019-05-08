FILESEXTRAPATHS_append := ":${THISDIR}/files"

SRC_URI_append = " \
    file://grub.cfg_dev \
    file://grub.cfg_prod \
    "

do_deploy_append() {
    if ${@bb.utils.contains('DISTRO_FEATURES','development-image','true','false',d)}; then
        install -m 644 ${WORKDIR}/grub.cfg_dev ${DEPLOYDIR}/grub.cfg
    else
        install -m 644 ${WORKDIR}/grub.cfg_prod ${DEPLOYDIR}/grub.cfg
    fi
}
