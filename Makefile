help:
	@make -qpRr | grep -Ee '^[a-z].*:$$' | sed -e 's~:~~g' | sort

.PHONY: src-update
src-update:
	git subtree pull -P src https://github.com/Mbed-TLS/mbedtls.git master

.PHONY: update
update:
	git fetch https://github.com/allyourcodebase/mbedtls.git
