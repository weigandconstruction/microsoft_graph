# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphWebApplication do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :homePageUrl,
    :implicitGrantSettings,
    :logoutUrl,
    :redirectUriSettings,
    :redirectUris
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :homePageUrl => String.t() | nil,
          :implicitGrantSettings =>
            MicrosoftGraph.Model.MicrosoftGraphWebApplicationImplicitGrantSettings.t() | nil,
          :logoutUrl => String.t() | nil,
          :redirectUriSettings =>
            [MicrosoftGraph.Model.MicrosoftGraphRedirectUriSettings.t()] | nil,
          :redirectUris => [String.t()] | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :implicitGrantSettings,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphWebApplicationImplicitGrantSettings
    )
    |> Deserializer.deserialize(
      :redirectUriSettings,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphRedirectUriSettings
    )
  end
end
