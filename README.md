# run-local-wordpress

Create a local WordPress instance for testing purposes with SQLite in a **few seconds**.

* no MySQL server needed
* no Apache needed, only PHP (with SQLite enabled)
* WP-CLI is shipped with this

## Setup (Linux, MacOS)

* Download or locally clone this project
* Go into the folder (via terminal and `cd` or manually)
* Execute `run-local-wordpress.sh`
* Open `localhost:8080` in your browser

## Setup (Windows - untested)

* Enable `php_sqlite3.dll` in your `php.ini` (see also the [PHP documentation](https://www.php.net/manual/en/sqlite3.installation.php))
* Install libsqlite3.dll and add it to the path (get [here](https://www.sqlite.org/download.html) the "Precompiled Binaries for Windows")
* Download or locally clone this project
* Go into the folder (via explorer)
* Execute `run-local-wordpress.bat`
* Open `localhost:8080` in your browser