#!/bin/bash
DOCKER_ARGS="run --name %n -u $(id -u):$(id -g) -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins_py"
echo "$DOCKER_ARGS"
UNIT=${1:-/etc/systemd/system/jenkins.service}
echo "Installing systemd unit: $UNIT"
sudo tee $UNIT > /dev/null <<EOF
[Unit]
Description=Jenkins Container
After=docker.service
Requires=docker.service

[Service]
TimeoutStartSec=0
Restart=always
ExecStartPre=-/usr/bin/docker stop %n
ExecStartPre=-/usr/bin/docker rm %n
ExecStartPre=/usr/bin/docker pull jenkins/jenkins
ExecStartPre=/usr/bin/docker build -t jenkins_py $PWD
ExecStart=/usr/bin/docker $DOCKER_ARGS

[Install]
WantedBy=multi-user.target
EOF
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl enable jenkins
