{$TELEGRAM_DOMAIN} {
    # 路由
    route /* {
        reverse_proxy https://api.telegram.org {
            header_up Host api.telegram.org
        }
    }

    import COMMON_CONFIG "/data/logs/{$TELEGRAM_DOMAIN}.log"
}

{$TROJAN_DOMAIN} {
    route / {
        trojan {
            user {$TROJAN_PASSWORD}
        }
        teapot
    }

    import COMMON_CONFIG "/data/logs/{$TROJAN_DOMAIN}.log"
}
