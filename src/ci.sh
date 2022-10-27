# Build Container
docker build -t 172.16.1.35/tanzu-kubernetes-clusters/vmk-nginx:$TAG_VER .

# Push Container
docker push 172.16.1.35/tanzu-kubernetes-clusters/vmk-nginx:$TAG_VER
docker rmi -f 172.16.1.35/tanzu-kubernetes-clusters/vmk-nginx:$TAG_VER