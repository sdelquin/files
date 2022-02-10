sync:
	scripts/sync.sh

update:
	scripts/update.sh
	scripts/get-version.sh

get-version:
	scripts/get-version.sh

fix-license:
	scripts/fix-license.sh

clean-zip:
	scripts/clean-zip.sh

clean-cache:
	scripts/clean-cache.sh

dev:
	docker-compose up
