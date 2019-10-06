# cmdb

[![Build Status](https://travis-ci.org/xiexianbin/cmdb-x.svg?branch=master)](https://travis-ci.org/xiexianbin/cmdb-x)

## 目的

通过简单配置，实现对`https://github.com/Tencent/bk-cmdb/releases`发布的版本实现自动打包。

## 使用

update VERSION，格式为：A.B.C


```
v=release-v3.2.17
git tag -a $v -m "bk cmdb $v"
git push origin $v
```

## 删除`tag`

```
git tag -d <tag-name>    # 删除本地分支
git push origin --delete <tag-name>    # 删除远程分支
```
