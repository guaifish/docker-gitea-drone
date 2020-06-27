sudo apt update && sudo apt upgrade -y
sudo apt install docker.io docker-compose -y
sudo gpasswd -a $USER docker
# newgrp docker

# 使用阿里云镜像加速
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://4jou76fh.mirror.aliyuncs.com"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart dockerdocke