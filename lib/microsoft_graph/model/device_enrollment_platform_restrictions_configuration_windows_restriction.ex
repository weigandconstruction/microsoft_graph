# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DeviceEnrollmentPlatformRestrictionsConfigurationWindowsRestriction do
  @moduledoc """
  Windows restrictions based on platform, platform operating system version, and device ownership
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :osMaximumVersion,
    :osMinimumVersion,
    :personalDeviceEnrollmentBlocked,
    :platformBlocked
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :osMaximumVersion => String.t | nil,
    :osMinimumVersion => String.t | nil,
    :personalDeviceEnrollmentBlocked => boolean() | nil,
    :platformBlocked => boolean() | nil
  }

  def decode(value) do
    value
  end
end
