sync:
	scripts/sync.sh

update:
	curl -O https://cdn.jsdelivr.net/npm/files.photo.gallery/index.php

dev:
	docker-compose up

fix-license:
	scripts/fix-license.sh
