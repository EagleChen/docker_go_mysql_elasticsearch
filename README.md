# docker_go_mysql_elasticsearch
dockerfile and start script for [go-mysql-elasticsearch](https://github.com/siddontang/go-mysql-elasticsearch)

## Usage
```
docker run -d -v /tmp/go_mysql_river.toml:/go_mysql_river.toml:r eaglechen/go-mysql-elasticsearch
```

Config file path can be set by environment variale `CONFIG`. The default value is `/go_mysql_river.toml`.
