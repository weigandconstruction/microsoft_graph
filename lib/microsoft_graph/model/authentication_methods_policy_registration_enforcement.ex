# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.AuthenticationMethodsPolicyRegistrationEnforcement do
  @moduledoc """
  Enforce registration at sign-in time. This property can be used to remind users to set up targeted authentication methods.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :authenticationMethodsRegistrationCampaign
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :authenticationMethodsRegistrationCampaign => MicrosoftGraph.Model.MicrosoftGraphRegistrationEnforcementAuthenticationMethodsRegistrationCampaign.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:authenticationMethodsRegistrationCampaign, :struct, MicrosoftGraph.Model.MicrosoftGraphRegistrationEnforcementAuthenticationMethodsRegistrationCampaign)
  end
end
