# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DeviceManagementDeviceCompliancePolicyDeviceStateSummary do
  @moduledoc """
  The device compliance state summary for this account.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :compliantDeviceCount,
    :configManagerCount,
    :conflictDeviceCount,
    :errorDeviceCount,
    :inGracePeriodCount,
    :nonCompliantDeviceCount,
    :notApplicableDeviceCount,
    :remediatedDeviceCount,
    :unknownDeviceCount
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :compliantDeviceCount => integer() | nil,
    :configManagerCount => integer() | nil,
    :conflictDeviceCount => integer() | nil,
    :errorDeviceCount => integer() | nil,
    :inGracePeriodCount => integer() | nil,
    :nonCompliantDeviceCount => integer() | nil,
    :notApplicableDeviceCount => integer() | nil,
    :remediatedDeviceCount => integer() | nil,
    :unknownDeviceCount => integer() | nil
  }

  def decode(value) do
    value
  end
end
