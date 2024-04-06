#!/bin/sh
# 清除ipset
/usr/share/passwall/iptables.sh flush_ipset

#tg机器人通知
curl -s -X POST https://api.telegram.org/botxxxxxxxxxxxxxxxx/sendMessage -d chat_id=xxxxxxx -d text="清除ipset"
#企业微信机器人通知
curl -H "Content-Type: application/json" -X POST -d "{\"msgtype\":\"text\",\"text\":{\"content\":\"$message\"}}" "$webhook_url"
