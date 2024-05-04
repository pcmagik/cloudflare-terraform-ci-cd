terraform {
  cloud {
    organization = "proxmox-lab"

    workspaces {
      name = "cloudflare-terraform-pcmagik-xyz"
    }
  }
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

provider "cloudflare" {
}

variable "zone_id" {
  default = "25bc45064018f2f3aca850e6d9718354"
}

variable "domain" {
  default = "pcmagik.xyz"
}

resource "cloudflare_record" "terraform_managed_resource_9f22dcb9b56879b9431b8a5f02227ac0" {
  name    = "www"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "15.18.15.22"
  zone_id = "25bc45064018f2f3aca850e6d9718354"
}


