www.mritd.com {
    # 重定向
    redir https://mritd.com{uri} permanent

    import ACME_DNS CLOUDFLARE TLS_1.3
    import LOG_FILE "mritd.com"
}

mritd.com {
    reverse_proxy mritd_com:80

    import ACME_DNS CLOUDFLARE TLS_1.3
    import LOG_FILE "mritd.com"
}
