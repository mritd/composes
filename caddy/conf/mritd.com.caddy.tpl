www.mritd.com {
    # 重定向
    redir https://mritd.com{uri}

    import ACME_DNS CLOUDFLARE
    import LOG_FILE "/data/logs/mritd.com.log"
}

mritd.com {
    reverse_proxy mritd_com:80

    import ACME_DNS CLOUDFLARE
    import LOG_FILE "/data/logs/mritd.com.log"
}
