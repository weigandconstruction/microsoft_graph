# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphCustomTimeZone do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :name,
    :bias,
    :daylightOffset,
    :standardOffset
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :name => String.t | nil,
    :bias => integer() | nil,
    :daylightOffset => MicrosoftGraph.Model.CustomTimeZoneDaylightOffset.t | nil,
    :standardOffset => MicrosoftGraph.Model.CustomTimeZoneStandardOffset.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:daylightOffset, :struct, MicrosoftGraph.Model.CustomTimeZoneDaylightOffset)
     |> Deserializer.deserialize(:standardOffset, :struct, MicrosoftGraph.Model.CustomTimeZoneStandardOffset)
  end
end
