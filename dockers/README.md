### 打包
```shell
cd dockers
sh build.sh feishu-openai 202310261317
```

### 部署
```shell
sudo docker run -d --hostname feishu-openai --name feishu-openai -p 5050:9000 08net/feishu-openai:latest
sudo docker run -d --hostname feishu-openai --name feishu-openai -p 5050:9000 08net/feishu-openai:202310261317
```

### 测试
```shell
curl http://127.0.0.1:5050/ping
```
