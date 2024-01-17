# notes


## arch arm 国内源

1. Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxarm/$arch/$repo
2. Server = https://mirrors.ustc.edu.cn/archlinuxarm/$arch/$repo

## 本地虚拟机地址

arch0 198.19.249.138/24
arch1 198.19.249.245/24
arch2 198.19.249.12/24

198.19.249.138  arch0
198.19.249.245  arch1
198.19.249.12   arch2

## cluster config

|      | arch0                   | arch1                             | arch2                            |
| ---- | ----------------------- | --------------------------------- | -------------------------------- |
| HDFS | NameNode <br/> DataNode | DataNode                          | SecondaryNameNode <br/> DataNode |
| YARN | NodeManager             | ResourceManager <br/> NodeManager | NodeManager                      |

### cluster init

`hdfs namenode -format`

- arch0.orb.local:9870
-


### jobhistoryserver

- `mapred --daemon start historyserver`
- `mapred --daemon stop historyserver`
- `hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.3.6.jar wordcount /wcinput /wcoutput0`
