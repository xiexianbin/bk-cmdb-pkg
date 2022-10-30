# cmdb

[![actions](https://github.com/xiexianbin/bk-cmdb-pgk/actions/workflows/actions.yml/badge.svg)](https://github.com/xiexianbin/bk-cmdb-pgk/actions/workflows/actions.yml)

## 目的

通过简单配置，实现对`https://github.com/Tencent/bk-cmdb/releases`发布的版本实现自动打包。

## 自动

```
./xctl create 3.5.14
./xctl delete 3.5.14
```

## 手动

### 创建

update VERSION，格式为：A.B.C


```
v=release-v3.2.17
git tag -a $v -m "bk cmdb $v"
git push origin $v
```

### 删除

```
git tag -d <tag-name>    # 删除本地分支
git push origin --delete <tag-name>    # 删除远程分支
```
