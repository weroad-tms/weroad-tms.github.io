#!/bin/sh
# 위로드 확장프로그램 묶기: extension/ → ext/weroad-extension.zip (압축 안에 'weroad' 폴더 하나)
set -e; cd "$(dirname "$0")/.."; rm -rf /tmp/wrext && mkdir -p /tmp/wrext/weroad && cp extension/* /tmp/wrext/weroad/
rm -f ext/weroad-extension.zip; (cd /tmp/wrext && zip -qr - weroad) > ext/weroad-extension.zip; rm -rf /tmp/wrext; echo built
