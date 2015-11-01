# 前言 #

以下例子假定你的 OS 是近代 Linux，帶有 FontConfig 字型管理；字型儲存位置在不同 Linux 版本中各有不同，請自行研究您的系統哪個地方。

# Fedora #

  1. 在 http://code.google.com/p/wangfonts/source/browse/ 抓取您需要的字型檔。
  1. 在 root 的權限下在 /usr/share/fonts 文件夾裏建立新的文件夾：
```
cd /usr/share/fonts/ && mkdir wangfonts
```
  1. 把字型檔複製到新建立的文件夾裏：
```
cp <字型檔名> wangfonts/
```
  1. 執行 fc-cache 讓 FontConfig 索引到新的字型：
```
fc-cache wangfonts/
```
  1. 完成!