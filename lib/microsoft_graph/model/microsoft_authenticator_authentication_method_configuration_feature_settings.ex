# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftAuthenticatorAuthenticationMethodConfigurationFeatureSettings do
  @moduledoc """
  A collection of Microsoft Authenticator settings such as application context and location context, and whether they are enabled for all users or specific users only.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :displayAppInformationRequiredState,
    :displayLocationInformationRequiredState
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :displayAppInformationRequiredState => MicrosoftGraph.Model.MicrosoftGraphMicrosoftAuthenticatorFeatureSettingsDisplayAppInformationRequiredState.t | nil,
    :displayLocationInformationRequiredState => MicrosoftGraph.Model.MicrosoftGraphMicrosoftAuthenticatorFeatureSettingsDisplayLocationInformationRequiredState.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:displayAppInformationRequiredState, :struct, MicrosoftGraph.Model.MicrosoftGraphMicrosoftAuthenticatorFeatureSettingsDisplayAppInformationRequiredState)
     |> Deserializer.deserialize(:displayLocationInformationRequiredState, :struct, MicrosoftGraph.Model.MicrosoftGraphMicrosoftAuthenticatorFeatureSettingsDisplayLocationInformationRequiredState)
  end
end
