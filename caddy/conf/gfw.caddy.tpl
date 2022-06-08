{$TELEGRAM_DOMAIN} {
    reverse_proxy https://api.telegram.org {
        header_up Host api.telegram.org
    }

    import ACME_HTTP
    import LOG_FILE "/data/logs/{$TELEGRAM_DOMAIN}.log"
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

    import ACME_HTTP
    import LOG_FILE "/data/logs/{$TROJAN_DOMAIN}.log"
}
