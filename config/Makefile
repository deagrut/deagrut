SHELL=/bin/bash

INSTALLDIR=/etc/dgrt

info:
	$(info Installation de fichiers de configuration pour les utilisateurs.)

install-bashrc:
	@if [ -f "${INSTALLDIR}/bashrc" ] ; then \
		printf "bashrc: already installed\n" ; \
	else \
		(cp "./bashrc" "${INSTALLDIR}/bashrc" && chmod o+x "${INSTALLDIR}/bashrc") \
			&& printf "bashrc: successfully installed\n" \
			|| printf "bashrc: error during installation\n" ; \
	fi

clean :
	rm "${INSTALLDIR}/bashrc"

.PHONY: default
