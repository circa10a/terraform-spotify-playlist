## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_spotify"></a> [spotify](#requirement\_spotify) | >=0.1.10 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_spotify"></a> [spotify](#provider\_spotify) | >=0.1.10 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [spotify_playlist.playlist](https://registry.terraform.io/providers/conradludgate/spotify/latest/docs/resources/playlist) | resource |
| [spotify_search_track.halloween_sounds](https://registry.terraform.io/providers/conradludgate/spotify/latest/docs/data-sources/search_track) | data source |
| [spotify_search_track.haunted_house_sounds](https://registry.terraform.io/providers/conradludgate/spotify/latest/docs/data-sources/search_track) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_explicit_tracks"></a> [allow\_explicit\_tracks](#input\_allow\_explicit\_tracks) | Allow explicit tracks to be added to the playlist or not. Defaults to false | `bool` | `false` | no |
| <a name="input_playlist_limit"></a> [playlist\_limit](#input\_playlist\_limit) | Limit playlist count depending on number of broken mcdonald's broken ice cream machines. 5% broken means 5 tracks. | `number` | n/a | yes |
| <a name="input_public_playlist"></a> [public\_playlist](#input\_public\_playlist) | Make playlist public or not | `bool` | `true` | no |
| <a name="input_spotify_api_key"></a> [spotify\_api\_key](#input\_spotify\_api\_key) | Access token for spotify API calls | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tracks"></a> [tracks](#output\_tracks) | n/a |
