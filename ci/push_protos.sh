#!/usr/bin/env bash

set -eux -o pipefail

cp -r /ssh ~/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC2uGRnLQ2VMySYhD0AstVGm/yA3eivdPzWU41oI2zfp7Lcy1QXNGYg1XykkH5yPHop/MpqT6FkE69HjxNYLCiDXCFGatPTty7KSluqSGuyaDvBhvtFnDcifCGkv3Wr3IpTAFnrf9AEpPUkRKaWZkjOO/nicDjbGxr1st6/Y1hPs7sElQuVtp0BRBlEpT3DhQnux4XzX4UDv95HLl41rERoHNvvHssT0bddmSKMuuuN/izRog2CTahjcLaQFlJLQAytYwA0Z2RRUzAxoVn0h0BSLj0oTG17bRXl8fbocFiHD8EWtvwZkvxvkVr2Ib39YRPoMh9WHM4d6EpJr2heXygZ6C5wvfKjfDtIBagfFOpOWfFrOayQPwFGA6AUgAawWihTTBiuMQOzxEG1r3kl3kistto16fRWQGHW4+BtSmNpZti//6E4IZRY6X6OrwoeOcni2E5aVFeqSdoQizASrpEyfjRrH9l4t0Ot/O7BfHb3H+/f3dM3wiIMtsiX1I+9+xiwJi0z7PdxQre3locdrCOYMRgCq2Ft1hyWRBBEV3+SYkiXS0c6FOqfs732aZ/UAexTJ+FfqSgfZ4mYMzn/05tepcYsgv+OM8HIQTpnkB5EGRrrZWu06DaGNPsULOjzdhy5d25qL1+42uqpcVWJlbhKvQer3Kmnf9hCjbZuh1DTGQ== fabric-gdpr" > ~/.ssh/id_rsa.pub
chmod 700 ~/.ssh
chmod 644 ~/.ssh/id_rsa.pub
chmod 600 ~/.ssh/id_rsa

cd /mnt/build/fabric-protos-go
git status | grep .pb.go | awk '{print $NF}' | xargs git add
git config user.name "fabric-gdpr"
git config user.email "<>"
git commit -F .COMMIT
git remote add upstream git@github.com:FabricGDPR/fabric-protos-go.git
git push upstream master