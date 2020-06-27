sudo cp docker-gitea-drone.service /etc/systemd/system/docker-gitea-drone.service
sudo systemctl daemon-reload
sudo systemctl start docker-gitea-drone
sudo systemctl enable docker-gitea-drone