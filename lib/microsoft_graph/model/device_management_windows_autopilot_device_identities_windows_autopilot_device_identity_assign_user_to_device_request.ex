# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DeviceManagementWindowsAutopilotDeviceIdentitiesWindowsAutopilotDeviceIdentityAssignUserToDeviceRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :addressableUserName,
    :userPrincipalName
  ]

  @type t :: %__MODULE__{
          :addressableUserName => String.t() | nil,
          :userPrincipalName => String.t() | nil
        }

  def decode(value) do
    value
  end
end
