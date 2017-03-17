# 镜像备份到阿里云
docker login --username=937257166@qq.com registry.cn-hangzhou.aliyuncs.com -paixrslwh1993

docker tag $(docker commit  -m "deploy"  gospel_project_vote_ivy) registry.cn-hangzhou.aliyuncs.com/gospel/deploy:vote

docker push registry.cn-hangzhou.aliyuncs.com/gospel/deploy:vote

docker rm registry.cn-hangzhou.aliyuncs.com/gospel/deploy:vote
