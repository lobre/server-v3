# Deluge

Default credentials: `admin/deluge`

 - Change the download destination folder to `/downloads`.
 - Set the `Autoadd torrent files from` to `/downloads`.
 - Allow remote connections under `daemon` tab.
 - Enable `Label` plugin.
 - Add a user `admin:deluge:10` in the daemon file (`/config/auth`) and restart the container.

# Plex

When first connected to Plex server, set the manual port to `32400` to allow remote connections.

# Couchpotato

Add download client.

    username: admin
    password: deluge
    host: lobr.fr:58846

Enable Torrent Provider `ThePirateBay`.

# Sonarr

Add download client.

    host: lobr.fr
    port: 8112
    password: deluge

Add indexers `KickassTorrents, Nyaa, Rarbg`.

Add plex as connection.

    host: lobr.fr
    port: 32400

# Pydio

Database connection.

Database Type = MySQL
Host = pydio-db
Database = pydio
User = root
Password = pydio
Use MySQLi = no