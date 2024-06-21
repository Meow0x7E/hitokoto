#!/usr/bin/env zsh

typeset HITOKOTO_BUFFER_DIRECTORY=${HITOKOTO_BUFFER_DIRECTORY:-"${HOME}/.cache"}
typeset HITOKOTO_BUFFER_FILE=${HITOKOTO_BUFFER_FILE:-"hitokoto.txt"}
typeset HITOKOTO_BUFFER_PATH="${HITOKOTO_BUFFER_DIRECTORY}/${HITOKOTO_BUFFER_FILE}"
typeset HITOKOTO_URL='https://v1.hitokoto.cn/?c=a&c=b&c=c&c=d&c=e&c=f&c=g&c=h&c=k&c=l&encode=text&charset=utf-8&min_length=0&max_length=128'

mkdir -p $HITOKOTO_BUFFER_DIRECTORY

print $(
    cat $HITOKOTO_BUFFER_PATH 2>&- ||
    curl -sf $HITOKOTO_URL ||
    print -n "\u001b[38;2;255;0;0m错误: 无法获取一言，可能为网络故障, 缓存文件不存在或对当前进程不可写\u001b[0m"
)

{
    curl -sfo $HITOKOTO_BUFFER_PATH $HITOKOTO_URL ||
    print "\u001b[38;2;255;0;0m错误: 缓存文件写入失败, 可能为网络故障, 路径不存在或对当前进程不可写 ${BUFFER_PATH}\u001b[0m" 
} &
