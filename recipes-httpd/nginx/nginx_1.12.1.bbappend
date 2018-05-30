FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " file://*.html \
             file://style/"

FILES_${PN} += "/srv/www/*.html \
                /srv/www/style/* "

do_install_append() {
  
  mkdir -p ${D}/srv/www
  cp -R ${WORKDIR}/*.html ${D}/srv/www
  cp -R ${WORKDIR}/style ${D}/srv/www
}
