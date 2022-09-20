{$TELEGRAM_DOMAIN} {
    reverse_proxy https://api.telegram.org {
        header_up Host api.telegram.org
    }

    import ACME_HTTP
    import LOG_FILE "/data/logs/{$TELEGRAM_DOMAIN}.log"
}
