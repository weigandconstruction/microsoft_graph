# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DeviceCompliancePolicyDeviceStatusOverview do
  @moduledoc """
  Device compliance devices status overview
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :configurationVersion,
    :errorCount,
    :failedCount,
    :lastUpdateDateTime,
    :notApplicableCount,
    :pendingCount,
    :successCount
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :configurationVersion => integer() | nil,
          :errorCount => integer() | nil,
          :failedCount => integer() | nil,
          :lastUpdateDateTime => DateTime.t() | nil,
          :notApplicableCount => integer() | nil,
          :pendingCount => integer() | nil,
          :successCount => integer() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:lastUpdateDateTime, :datetime, nil)
  end
end
