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


[🇵🇱 Polish version of this file](README_PL.md)