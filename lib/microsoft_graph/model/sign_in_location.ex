# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.SignInLocation do
  @moduledoc """
  Provides the city, state, and country code where the sign-in originated.  Supports $filter (eq, startsWith) on city, state, and countryOrRegion properties.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :city,
    :countryOrRegion,
    :geoCoordinates,
    :state
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :city => String.t | nil,
    :countryOrRegion => String.t | nil,
    :geoCoordinates => MicrosoftGraph.Model.MicrosoftGraphSignInLocationGeoCoordinates.t | nil,
    :state => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:geoCoordinates, :struct, MicrosoftGraph.Model.MicrosoftGraphSignInLocationGeoCoordinates)
  end
end
