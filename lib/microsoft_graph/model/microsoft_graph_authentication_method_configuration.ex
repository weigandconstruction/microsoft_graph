# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodConfiguration do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :excludeTargets,
    :state
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :excludeTargets => [MicrosoftGraph.Model.AuthenticationMethodConfigurationExcludeTargetsInner.t] | nil,
    :state => MicrosoftGraph.Model.AuthenticationMethodConfigurationState.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:excludeTargets, :list, MicrosoftGraph.Model.AuthenticationMethodConfigurationExcludeTargetsInner)
     |> Deserializer.deserialize(:state, :struct, MicrosoftGraph.Model.AuthenticationMethodConfigurationState)
  end
end
