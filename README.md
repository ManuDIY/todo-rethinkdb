# RethinkDB on Kontena

## Prerequisities

* working [Kontena installation](https://kontena.io/docs/getting-started/quick-start)
* working [Kontena VPN connection](https://kontena.io/docs/using-kontena/vpn-access)

## Deploy app

```
$ kontena app deploy
```


## Scale RethinkDB

```
$ kontena app scale db 3
```

## Configure sharding and replication
After deploy has finished, head over to http://todo-rethinkdb-db-1.kontena.local:8080/ and configure sharding and replication settings for table `todo_production.todos`
