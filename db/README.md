# db

The NARA database is too large to populate with ActiveRecord, so we use a plain
SQL dump file. To load the file:

```sh
mysql -h <hostname> -P <port> -u <user> -p <database-name> < nara-dump.sql
```

For the staging database, the hostname is `vm242.lib.berkeley.edu` and the
port is 43306.
