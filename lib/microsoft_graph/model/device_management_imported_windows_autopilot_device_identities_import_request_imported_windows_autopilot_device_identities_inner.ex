# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DeviceManagementImportedWindowsAutopilotDeviceIdentitiesImportRequestImportedWindowsAutopilotDeviceIdentitiesInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :assignedUserPrincipalName,
    :groupTag,
    :hardwareIdentifier,
    :importId,
    :productKey,
    :serialNumber,
    :state
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :assignedUserPrincipalName => String.t | nil,
    :groupTag => String.t | nil,
    :hardwareIdentifier => String.t | nil,
    :importId => String.t | nil,
    :productKey => String.t | nil,
    :serialNumber => String.t | nil,
    :state => MicrosoftGraph.Model.ImportedWindowsAutopilotDeviceIdentityState.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:state, :struct, MicrosoftGraph.Model.ImportedWindowsAutopilotDeviceIdentityState)
  end
end
