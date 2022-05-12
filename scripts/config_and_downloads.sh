#!/bin/bash

echo "[Info] You can copy this file via ssh with scp command"
echo "[Info] scp -i privKey.pem srcFile user@1.1.1.1:/dst/path/not/this/one"

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" >> /dev/null

unzip awscliv2.zip >> /dev/null
rm awscliv2.zip

sudo ./aws/install --bin-dir /usr/bin --install-dir /usr/bin/aws-cli --update >> /dev/null

echo "[*] AWS version 2 installed"

curl -o kubectl https://s3.us-west-2.amazonaws.com/amazon-eks/1.22.6/2022-03-09/bin/linux/amd64/kubectl

chmod +x ./kubectl
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin >> /dev/null
echo "[*] Kubectl installed"

curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp >> /dev/null
sudo mv /tmp/eksctl /usr/bin

echo "[*] eksctl installed"
echo "[Info] Remember to set up your aws config credentials with $ aws configure"

