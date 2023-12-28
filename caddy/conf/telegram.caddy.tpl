{$TELEGRAM_DOMAIN} {
    reverse_proxy https://api.telegram.org {
        header_up Host {upstream_hostport}
    }

    import ACME_HTTP TLS_1.3
    import LOG_FILE "{$TELEGRAM_DOMAIN}"
}
