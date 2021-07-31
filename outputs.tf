output "tracks" {
  value = module.spotify_playlist.tracks
}

output "number_of_tracks" {
  value = length(module.spotify_playlist.tracks)
}

output "dallas_broken_ice_cream_machines_percentage" {
  value = "${data.mcbroken_city.city.broken}%"
}
