www.mritd.com {
    # 重定向
    redir https://mritd.com{uri}

    import CF "/data/logs/mritd.com.log"
}

mritd.com {
    # 路由
    handle /* {
        reverse_proxy mritd_com:80
    }

    import CF "/data/logs/mritd.com.log"
}
