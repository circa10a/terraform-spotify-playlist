data "mcbroken_city" "city" {
  city = var.city
}

locals {
  // Round down float to int for broken mcdonalds ice cream machines in selected city
  broken_machines_count = floor(data.mcbroken_city.city.broken)
  // In the event there is an issue with retrieving values -1 will be returned
  // Ensure we always get some tunes
  track_count = local.broken_machines_count > 0 ? local.broken_machines_count : 10
}

module "spotify_playlist" {
  source          = "./modules/spotify-playlist"
  spotify_api_key = var.spotify_api_key
  playlist_limit  = local.track_count
}
