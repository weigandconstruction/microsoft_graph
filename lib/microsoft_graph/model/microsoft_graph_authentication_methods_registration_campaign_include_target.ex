# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodsRegistrationCampaignIncludeTarget do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :targetType,
    :targetedAuthenticationMethod
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :targetType => MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodTargetType.t | nil,
    :targetedAuthenticationMethod => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:targetType, :struct, MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodTargetType)
  end
end
