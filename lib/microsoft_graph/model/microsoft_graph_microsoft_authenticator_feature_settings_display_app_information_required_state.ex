# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphMicrosoftAuthenticatorFeatureSettingsDisplayAppInformationRequiredState do
  @moduledoc """
  Determines whether the user's Authenticator app shows them the client app they're signing into.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :excludeTarget,
    :includeTarget,
    :state
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :excludeTarget => MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodFeatureConfigurationExcludeTarget.t | nil,
    :includeTarget => MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodFeatureConfigurationIncludeTarget.t | nil,
    :state => MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodFeatureConfigurationState.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:excludeTarget, :struct, MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodFeatureConfigurationExcludeTarget)
     |> Deserializer.deserialize(:includeTarget, :struct, MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodFeatureConfigurationIncludeTarget)
     |> Deserializer.deserialize(:state, :struct, MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodFeatureConfigurationState)
  end
end
