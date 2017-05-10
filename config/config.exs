use Mix.Config

config :proximi,
  root_api_url: System.get_env("PROXIMI_ROOT_API_URL"),
  api_token: System.get_env("PROXIMI_API_TOKEN")
