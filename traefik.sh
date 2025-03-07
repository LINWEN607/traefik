# 添加repo
 helm repo add traefik https://helm.traefik.io/traefik
# 更新repo仓库资源
 helm repo update
# 查看repo仓库traefik
 helm search repo traefik
# 创建traefik名称空间
kubectl create ns traefik
# 安装traefik
helm install traefik . -n traefik -f values.yaml
# 查看helm列表
helm list -n traefik
# 查看pod资源信息
kubectl get pod -n traefik
#HTTPS域名路由(自有证书)
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout tls.key -out tls.crt -subj "/CN=myapp2.test.com"
#创建Secret资源来引用证书文件
 kubectl create secret tls myapp2-tls --cert=tls.crt --key=tls.key
