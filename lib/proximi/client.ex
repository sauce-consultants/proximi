defmodule Proximi.Client do
  @moduledoc """
  An HTTP client for Proximi.
  """

  # Build the client on top of HTTPoison
  use Application
  use HTTPoison.Base

  def start(_type, _args) do
    Proximi.Supervisor.start_link
  end

  @doc """
  Creates the URL for our endpoint.
  """
  def process_url(endpoint) do
    "#{root_api_url()}#{endpoint}" 
  end

  @doc """
  Decodes the response to JSON and converts the binary keys in our response to atoms.
  """
  def process_response_body(body) do
    JSX.decode!(body, [{:labels, :atom}])
  end

  @doc """
  Boilerplate code to make requests.
  """
  def get(endpoint, params \\ %{}) do
    Proximi.Client.get!(
      endpoint,
      headers(),
      params: params
    ).body
  end
  
  def put(endpoint, params \\ %{}) do
    Proximi.Client.put!(
      endpoint,
      headers(),
      params: params
    ).body
  end

  def post(endpoint, body, params \\ %{}) do
    Proximi.Client.post!(
      endpoint,
      JSX.encode!(body),
      headers(),
      params: params
    ).body
  end


  @doc """
  Default json headers
  """
  def headers do
    %{
      "Content-Type" => "application/json",
      # "Accept" => "application/json",
      "Authorization" => auth_header()
    }
  end

  defp auth_header do
    "Bearer #{Application.get_env(:proximi, :token)}"
  end

  def root_api_url do
   Application.get_env(:proximi, :root_api_url) ||
     System.get_env("PROXIMI_ROOT_API_URL")
  end

end
