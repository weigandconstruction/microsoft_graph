# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DeviceManagementSettings do
  @moduledoc """
  Account level settings.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :deviceComplianceCheckinThresholdDays,
    :isScheduledActionEnabled,
    :secureByDefault
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :deviceComplianceCheckinThresholdDays => integer() | nil,
          :isScheduledActionEnabled => boolean() | nil,
          :secureByDefault => boolean() | nil
        }

  def decode(value) do
    value
  end
end
