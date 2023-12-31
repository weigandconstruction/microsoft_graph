# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsWorkFromAnywhereDevicesSummary do
  @moduledoc """
  The user experience analytics Work From Anywhere metrics devices summary.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :autopilotDevicesSummary,
    :cloudIdentityDevicesSummary,
    :cloudManagementDevicesSummary,
    :coManagedDevices,
    :devicesNotAutopilotRegistered,
    :devicesWithoutAutopilotProfileAssigned,
    :devicesWithoutCloudIdentity,
    :intuneDevices,
    :tenantAttachDevices,
    :totalDevices,
    :unsupportedOSversionDevices,
    :windows10Devices,
    :windows10DevicesSummary,
    :windows10DevicesWithoutTenantAttach
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :autopilotDevicesSummary =>
            MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsWorkFromAnywhereDevicesSummaryAutopilotDevicesSummary.t()
            | nil,
          :cloudIdentityDevicesSummary =>
            MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsWorkFromAnywhereDevicesSummaryCloudIdentityDevicesSummary.t()
            | nil,
          :cloudManagementDevicesSummary =>
            MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsWorkFromAnywhereDevicesSummaryCloudManagementDevicesSummary.t()
            | nil,
          :coManagedDevices => integer() | nil,
          :devicesNotAutopilotRegistered => integer() | nil,
          :devicesWithoutAutopilotProfileAssigned => integer() | nil,
          :devicesWithoutCloudIdentity => integer() | nil,
          :intuneDevices => integer() | nil,
          :tenantAttachDevices => integer() | nil,
          :totalDevices => integer() | nil,
          :unsupportedOSversionDevices => integer() | nil,
          :windows10Devices => integer() | nil,
          :windows10DevicesSummary =>
            MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsWorkFromAnywhereDevicesSummaryWindows10DevicesSummary.t()
            | nil,
          :windows10DevicesWithoutTenantAttach => integer() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :autopilotDevicesSummary,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsWorkFromAnywhereDevicesSummaryAutopilotDevicesSummary
    )
    |> Deserializer.deserialize(
      :cloudIdentityDevicesSummary,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsWorkFromAnywhereDevicesSummaryCloudIdentityDevicesSummary
    )
    |> Deserializer.deserialize(
      :cloudManagementDevicesSummary,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsWorkFromAnywhereDevicesSummaryCloudManagementDevicesSummary
    )
    |> Deserializer.deserialize(
      :windows10DevicesSummary,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsWorkFromAnywhereDevicesSummaryWindows10DevicesSummary
    )
  end
end
