{$TELEGRAM_DOMAIN} {
    # 路由
    route /* {
        reverse_proxy https://api.telegram.org {
            header_up Host api.telegram.org
        }
    }

    import COMMON_TLS "/data/logs/{$TELEGRAM_DOMAIN}.log"
}

{$TROJAN_DOMAIN} {
    route / {
        trojan {
            connect_method
        }

        file_server {
            root /usr/share/caddy
        }
    }

    import COMMON_TLS "/data/logs/{$TROJAN_DOMAIN}.log"
}
