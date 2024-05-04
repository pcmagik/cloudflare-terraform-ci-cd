# Cloudflare Terraform CI/CD — cf-terraforming Installation

This guide will help you install the `cf-terraforming` tool on Ubuntu, which is used to export Cloudflare configurations to Terraform code.

## Step 1: Downloading cf-terraforming

Download the latest version of the `cf-terraforming` tool from the GitHub repository:

```bash
curl -L https://github.com/cloudflare/cf-terraforming/releases/download/v0.19.0/cf-terraforming_0.19.0_linux_amd64.tar.gz -o cf-terraforming.tar.gz
```

Unpack the downloaded archive:

```bash
tar -xvf cf-terraforming.tar.gz
```

Navigate to the tool directory:

```bash
cd cmd/cf-terraforming
```

## Step 2: Installing Go

To use `cf-terraforming`, you need the Go language. Install Go using backports to get the latest available version:

```bash
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt update
sudo apt install golang-go
```

Check the Go version to ensure the installation was successful:

```bash
go version
```

## Step 3: Compiling cf-terraforming

Compile `cf-terraforming` using Go:

```bash
go build .
```

## Step 4: Installing cf-terraforming

Move the compiled file to the system directory to make it globally available:

```bash
sudo mv ./cf-terraforming /usr/local/bin/
```

Give the file execution rights:

```bash
sudo chmod +x /usr/local/bin/cf-terraforming
```

## Step 5: Checking the installation

Check if `cf-terraforming` has been correctly installed and is ready to use:

```bash
cf-terraforming --help
```

Using the above instructions, `cf-terraforming` will be installed and configured in your Ubuntu system, ready to export Cloudflare configurations to Terraform.


```bash
cf-terraforming generate \
  --resource-type "cloudflare_record" \
  --zone $CLOUDFLARE_ZONE_ID > imported.tf
```

#### Look at the file and copy the contents into your cloudflare.tf , then run:

`terraform plan`

```bash
cf-terraforming import \
  --resource-type "cloudflare_record" \
  --zone $CLOUDFLARE_ZONE_ID
```
This will export a lot of commands, we now need to run them to import them into our state.

All you need to do it `copy` and `paste` the commands into your terminal.

This will import your local state, you can see it in `terraform.tfstate`

If we run terraform plan now, we can see that there aren’t any changes.

---
### Then we need to updated our .zshrc or .bashrc with our variables


```bash
nano ~/.bashrc
```

```bash
export CLOUDFLARE_API_TOKEN='12345'
export CLOUDFLARE_ZONE_ID='abcde'
```
The source your shell
```bash
source ~/.bashrc
```


[🇵🇱 Polish version of this file](README_PL.md)