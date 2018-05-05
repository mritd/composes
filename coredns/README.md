### Coredns

> Coredns 是一个集 DNS 与服务发现与一身的 DNS 服务器，具体请查看 [官方文档](https://coredns.io/)；
该 `docker-compose` 文件只是为了替换简单的 dnsmasq 服务器

### 使用方式

- `core.hosts` 中保存了基本的 A 记录映射，在其中添加相应的 DNS 记录即可
- `Corefile` 为 coredns 的配置文件，在其中可以指定多种插件及配置，如 `cache`、`hosts` 插件等
- 修改相应配置后使用 `docker-compose up -d` 启动即可
