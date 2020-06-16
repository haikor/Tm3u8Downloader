#!/bin/bash
echo "请输入 m3u8 url: 如：https://jingdian.qincai-zuida.com/20200429/6640_9ee4e1c4/1000k/hls/index.m3u8"
read url
echo "请输入要保存的路径: 如：aaa.mp4"
read outfilename
filename=${url##*/}
prefix=${url%/*}
curl $url | grep ts | xargs -I file echo "curl '${prefix}/file' >> $outfilename && echo 'file complete'" | sh
