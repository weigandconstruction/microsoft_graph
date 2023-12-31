# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsWorkFromAnywhereDevicesSummaryWindows10DevicesSummary do
  @moduledoc """
  The user experience analytics work from anywhere Windows 10 devices summary. Read-only.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :unsupportedOSversionDeviceCount
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :unsupportedOSversionDeviceCount => integer() | nil
        }

  def decode(value) do
    value
  end
end
