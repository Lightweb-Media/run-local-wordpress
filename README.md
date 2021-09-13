# run-local-wordpress

Create a local WordPress instance for testing purposes with a SQLite database in a **few seconds**.

* no database server (MySQL, MariaDB) needed
* no Apache needed, only PHP (with SQLite enabled)
* WP-CLI is shipped with this

## Setup (Linux, MacOS)

* [Download](https://github.com/DanielRuf/run-local-wordpress/archive/refs/heads/main.zip) and extract or locally clone this project
* Go into the folder (via terminal and `cd` or manually)
* Execute `./run-local-wordpress.sh` or `bash run-local-wordpress.sh`
* Open `localhost:8080` in your browser

There is also `run-local-wordpress-v2.sh` by @3ele-projects which uses the provided parameters to populate variables and updates the bundled WP-CLI version.

## Setup (Windows - untested)

* Enable `php_sqlite3.dll` in your `php.ini` (see also the [PHP documentation](https://www.php.net/manual/en/sqlite3.installation.php))
* Install libsqlite3.dll and add it to the path (get [here](https://www.sqlite.org/download.html) the "Precompiled Binaries for Windows")
* Download or locally clone this project
* Go into the folder (via explorer)
* Execute `run-local-wordpress.bat`
* Open `localhost:8080` in your browser
