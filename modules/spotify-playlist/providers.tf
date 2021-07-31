terraform {
  required_providers {
    spotify = {
      source  = "conradludgate/spotify"
      version = ">=0.1.10"
    }
  }
}

provider "spotify" {
  api_key = var.spotify_api_key
}
