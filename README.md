# files

This project aims to be a scaffolding for [Files app](https://www.files.gallery/). It allows to have a development environment and sync contents with a production server.

## Setup

1. Clone this repo.
2. Create a `contents` folder where the contents will stay.
3. If you plan to maintain your custom Files app in a production server, create a `.env` file with the following settings:

| Setting                   | Description                                              |
| ------------------------- | -------------------------------------------------------- |
| LICENSE_KEY\*             | License key for Files app                                |
| SSH_USER                  | User on production server                                |
| HOST                      | Hostname on production server                            |
| REMOTE_CONTENTS_PATH      | Full path where contents are stored in production server |
| REMOTE_CONTENTS_CHMOD\*\* | Permissions for contents folder in production server     |

\*Only if purchased.

\*\*Permission in the UNIX format (777). Keep in mind when you request zip download (it has to be the proper permissions on folders).

## Actions

### Local server

This will launch Docker services and you can reach Files app on http://localhost:8000:

```console
$ make dev
```

### Sync contents

If you want to sync your development contents with production:

```console
$ make sync
```

### Update application

If you want to update to latest version of Files app:

```console
$ make update
```

> 💡 &nbsp;After updating, file `_files/config/config.php` is also updated with new available settings. If license is overwritten in plain, you can fix it with the next action: fix license.

### Fix license

If you want to keep license out of control version:

```console
$ make fix-license
```

### Clean folder zip files

If you want to clean `_files.zip` files inside `contents` folder:

```console
$ make clean-zip
```

### Clean cache

If you want to clean cache:

```console
$ make clean-cache
```

### Get version

If you want to get the version of the installed Files app:

```console
$ make get-version
```

## Production

Keep in mind to assign group `www-data` for `_files` folder:

```console
$ sudo chgrp www-data _files
```

If you want to clean cache, you must to do it as sudo:

```console
$ sudo make clean-cache
```
