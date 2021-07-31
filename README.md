# 🍦 mcbroken-spotify-playlist 🎃

Create a spotify playlist depending how many McDonald's ice cream machines are broken in my city, Dallas.

Implement your own by following the [Hashicorp tutorial](https://learn.hashicorp.com/tutorials/terraform/spotify-playlist).

## About the code

The created tracks in the playlist created by this Terraform code is limited by the number of broken ice cream machines in Dallas, TX thanks to my [mcbroken provider](https://registry.terraform.io/providers/circa10a/mcbroken/latest/docs) that builds on [mcbroken.com](https://mcbroken.com)

Example, if 11% of McDonald's ice cream machines are broken in Dallas, then guess what, you get 11 tracks. Sorry, not sorry.

```hcl
Outputs:

dallas_broken_ice_cream_machines_percentage = "11.11%"
number_of_tracks = 11
tracks = toset([
  "09pk0cfDQhjtApRPV6VcdO",
  "0jPNqc1fa7rOaSsSfpqrjV",
  "171UQZHmcGOCrbgcqxD3WV",
  "1Alu6IRYqAMjl8OGOVI2GJ",
  "2WGkodmFq3psOhAZrWyF69",
  "2wjz8YVu7jINcJR5aScZlO",
  "4WQ6eIX9eRmNLc1m1OUha4",
  "5NmJ9mMDeob358RX04EUAy",
  "5pFNaXisFmJ8NW2zqc8v3c",
  "6CvDGops09TJgXItovmIrY",
  "75FfPTHYM7bQKdzUkoM3C6",
])
```

## About the playlist

I absolutely hate Summer. It's miserable in the South. So to create a false placebo of everything not sucking around me and that Autumn is so close, I created a playlist full of Halloween songs/sounds. 🎃

But why? Well, I have an elaborate Halloween IOT project in the works ... and because most of my favored music is pretty explicit by nature 🤘

Stay tuned for the IOT write-up on my [dev.to profile](https://dev.to/circa10a)

## Requirements

- Docker + docker-compose
- Terraform 1.0+

## Usage

```bash
# Start local oauth-proxy
docker-compose up -d
# Get API key and Auth URL
docker logs spotify-oauth-proxy
# Next, hit the Auth URL to cache an access token in the local server
# Set the API key that was output in the logs for terraform to use
export TF_VAR_spotify_api_key=<api key>
# Install providers
terraform init
# Create the playlist
terraform apply -auto-approve
```

## Terraform Requirements

| Name | Version |
|------|---------|
| <a name="requirement_mcbroken"></a> [mcbroken](#requirement\_mcbroken) | 0.1.8 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_mcbroken"></a> [mcbroken](#provider\_mcbroken) | 0.1.8 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_spotify_playlist"></a> [spotify\_playlist](#module\_spotify\_playlist) | ./modules/spotify-playlist | n/a |

## Resources

| Name | Type |
|------|------|
| [mcbroken_city.city](https://registry.terraform.io/providers/circa10a/mcbroken/0.1.8/docs/data-sources/city) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_city"></a> [city](#input\_city) | What city to pull mcbroken data for | `string` | `"Dallas"` | no |
| <a name="input_spotify_api_key"></a> [spotify\_api\_key](#input\_spotify\_api\_key) | Access token for spotify API calls | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dallas_broken_ice_cream_machines_percentage"></a> [dallas\_broken\_ice\_cream\_machines\_percentage](#output\_dallas\_broken\_ice\_cream\_machines\_percentage) | n/a |
| <a name="output_number_of_tracks"></a> [number\_of\_tracks](#output\_number\_of\_tracks) | n/a |
| <a name="output_tracks"></a> [tracks](#output\_tracks) | n/a |
