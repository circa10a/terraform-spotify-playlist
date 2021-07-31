variable "spotify_api_key" {
  type        = string
  description = "Access token for spotify API calls"
}

variable "city" {
  type        = string
  description = "What city to pull mcbroken data for"
  default     = "Dallas"
  validation {
    condition = contains([
      "New York",
      "Washington",
      "Philadelphia",
      "San diego",
      "Houston",
      "Dallas",
      "San antonio",
      "Phoenix",
      "San Francisco",
      "Seattle",
      "Los Angeles",
      "Chicago",
      "San Jose",
      "Boston"
    ], var.city)
    error_message = "This city is not supported."
  }
}
