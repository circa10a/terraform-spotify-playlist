data "spotify_search_track" "halloween_sounds" {
  artists  = ["Halloween Sounds"]
  explicit = var.allow_explicit_tracks
}

data "spotify_search_track" "haunted_house_sounds" {
  artists  = ["Haunted House"]
  explicit = var.allow_explicit_tracks
}

locals {
  merged_tracks = concat(data.spotify_search_track.halloween_sounds.tracks[*].id, data.spotify_search_track.haunted_house_sounds.tracks[*].id)
  // In the event the limit surpasses the number of tracks, fallback to 10
  // Thanks McDonald's 🍦
  limited_playlist = try(slice(local.merged_tracks, 0, var.playlist_limit), local.merged_tracks)
}

// Death to Summer
// Bring on Fall 🎃
resource "spotify_playlist" "playlist" {
  name        = "McBroken Terraform Halloween Playlist"
  description = "This playlist was created by Terraform and limited by McDonald's busted ice cream machines"
  public      = var.public_playlist
  tracks      = local.limited_playlist
}

