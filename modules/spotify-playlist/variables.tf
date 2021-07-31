variable "spotify_api_key" {
  type        = string
  description = "Access token for spotify API calls"
}

variable "playlist_limit" {
  type        = number
  description = "Limit playlist count depending on number of broken mcdonald's broken ice cream machines. 5% broken means 5 tracks."
}

variable "allow_explicit_tracks" {
  type        = bool
  description = "Allow explicit tracks to be added to the playlist or not. Defaults to false"
  default     = false
}

variable "public_playlist" {
  type        = bool
  description = "Make playlist public or not"
  default     = true
}
