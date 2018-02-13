### What is Brook

> Brook is a cross-platform(Linux/MacOS/Windows/Android/iOS) proxy/vpn software.
Brook's goal is to reduce the configuration steps. Keep it simple, stupid.

### How to use

#### Server

``` sh
export BKCMD="brook server -l :68 -p PASSWORD"
docker-compose up -d
```

#### Client

``` sh
export BKCMD="brook client -l :68 -i 0.0.0.0 -s YOUR_SERVER_IP:PORT -p PASSWORD"
docker-compose up -d
```
