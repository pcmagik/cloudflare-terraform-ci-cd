# cloudflare-terraform-ci-cd

curl -L https://github.com/cloudflare/cf-terraforming/releases/download/v0.19.0/cf-terraforming_0.19.0_linux_amd64.tar.gz -o cf-terraforming.tar.gz

tar -xvf cf-terraforming.tar.gz

cd cmd/cf-terraforming

sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt update
sudo apt install golang-go

go version


go build .


sudo mv ./cf-terraforming /usr/local/bin/

sudo chmod +x /usr/local/bin/cf-terraforming 

cf-terraforming --help

