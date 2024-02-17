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
$ just dev
```

### Sync contents

If you want to sync your development contents with production:

```console
$ just sync
```

### Update application

If you want to update to latest version of Files app:

```console
$ just update
```

> 💡 &nbsp;After updating, file `_files/config/config.php` is also updated with new available settings. If license is overwritten in plain, you can fix it with the next action: fix license.

### Fix license

If you want to keep license out of control version:

```console
$ just fix-license
```

### Clean folder zip files

If you want to clean `_files.zip` files inside `contents` folder:

```console
$ just clean-zip
```

### Clean cache

If you want to clean cache:

```console
$ just clean-cache
```

### Get version

If you want to get the version of the installed Files app:

```console
$ just get-version
```

## Production

Keep in mind to assign group `nginx` for `_files` folder:

```console
$ sudo chgrp nginx _files
$ sudo chmod 775 _files
```

A bunch of php modules should be installed in order to work properly. One of the most important one is [gd](https://www.php.net/manual/es/book.image.php) because it allows to make image thumbnails. You can install with:

```console
$ sudo apt install php8.2-gd
$ sudo systemctl restart php8.2-fpm
```

You can check config status with https://files.sdelquin.me/index.php?check=1. You can compare it with the "official" one here https://demo.files.gallery/index.php?check=1

If you want to clean cache, you must to do it as sudo:

```console
$ sudo just clean-cache
```
