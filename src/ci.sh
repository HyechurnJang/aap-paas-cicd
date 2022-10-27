# Create Version Tag
TAG_VER=$(date +"%Y%m%d.%H%M%S")
echo "$TAG_VER" | tr -d '\r' > $SCRIPT_RESPONSE_FILE

# Git Pull
cd /opt/aap-paas-cicd
git pull
cd /opt/aap-paas-cicd/src

# Build Container
docker build -t 172.16.1.35/tanzu-kubernetes-clusters/vmk-nginx:$TAG_VER .

# Push Container
docker push 172.16.1.35/tanzu-kubernetes-clusters/vmk-nginx:$TAG_VER
docker rmi -f 172.16.1.35/tanzu-kubernetes-clusters/vmk-nginx:$TAG_VER