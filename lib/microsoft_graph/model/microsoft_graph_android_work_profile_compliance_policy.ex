# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAndroidWorkProfileCompliancePolicy do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :assignments,
    :createdDateTime,
    :description,
    :deviceSettingStateSummaries,
    :deviceStatusOverview,
    :deviceStatuses,
    :displayName,
    :lastModifiedDateTime,
    :scheduledActionsForRule,
    :userStatusOverview,
    :userStatuses,
    :version,
    :deviceThreatProtectionEnabled,
    :deviceThreatProtectionRequiredSecurityLevel,
    :minAndroidSecurityPatchLevel,
    :osMaximumVersion,
    :osMinimumVersion,
    :passwordExpirationDays,
    :passwordMinimumLength,
    :passwordMinutesOfInactivityBeforeLock,
    :passwordPreviousPasswordBlockCount,
    :passwordRequired,
    :passwordRequiredType,
    :securityBlockJailbrokenDevices,
    :securityDisableUsbDebugging,
    :securityPreventInstallAppsFromUnknownSources,
    :securityRequireCompanyPortalAppIntegrity,
    :securityRequireGooglePlayServices,
    :securityRequireSafetyNetAttestationBasicIntegrity,
    :securityRequireSafetyNetAttestationCertifiedDevice,
    :securityRequireUpToDateSecurityProviders,
    :securityRequireVerifyApps,
    :storageRequireEncryption
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :assignments => [MicrosoftGraph.Model.MicrosoftGraphDeviceCompliancePolicyAssignment.t] | nil,
    :createdDateTime => DateTime.t | nil,
    :description => String.t | nil,
    :deviceSettingStateSummaries => [MicrosoftGraph.Model.MicrosoftGraphSettingStateDeviceSummary.t] | nil,
    :deviceStatusOverview => MicrosoftGraph.Model.DeviceCompliancePolicyDeviceStatusOverview.t | nil,
    :deviceStatuses => [MicrosoftGraph.Model.MicrosoftGraphDeviceComplianceDeviceStatus.t] | nil,
    :displayName => String.t | nil,
    :lastModifiedDateTime => DateTime.t | nil,
    :scheduledActionsForRule => [MicrosoftGraph.Model.MicrosoftGraphDeviceComplianceScheduledActionForRule.t] | nil,
    :userStatusOverview => MicrosoftGraph.Model.DeviceCompliancePolicyUserStatusOverview.t | nil,
    :userStatuses => [MicrosoftGraph.Model.MicrosoftGraphDeviceComplianceUserStatus.t] | nil,
    :version => integer() | nil,
    :deviceThreatProtectionEnabled => boolean() | nil,
    :deviceThreatProtectionRequiredSecurityLevel => MicrosoftGraph.Model.MicrosoftGraphDeviceThreatProtectionLevel.t | nil,
    :minAndroidSecurityPatchLevel => String.t | nil,
    :osMaximumVersion => String.t | nil,
    :osMinimumVersion => String.t | nil,
    :passwordExpirationDays => integer() | nil,
    :passwordMinimumLength => integer() | nil,
    :passwordMinutesOfInactivityBeforeLock => integer() | nil,
    :passwordPreviousPasswordBlockCount => integer() | nil,
    :passwordRequired => boolean() | nil,
    :passwordRequiredType => MicrosoftGraph.Model.MicrosoftGraphAndroidRequiredPasswordType.t | nil,
    :securityBlockJailbrokenDevices => boolean() | nil,
    :securityDisableUsbDebugging => boolean() | nil,
    :securityPreventInstallAppsFromUnknownSources => boolean() | nil,
    :securityRequireCompanyPortalAppIntegrity => boolean() | nil,
    :securityRequireGooglePlayServices => boolean() | nil,
    :securityRequireSafetyNetAttestationBasicIntegrity => boolean() | nil,
    :securityRequireSafetyNetAttestationCertifiedDevice => boolean() | nil,
    :securityRequireUpToDateSecurityProviders => boolean() | nil,
    :securityRequireVerifyApps => boolean() | nil,
    :storageRequireEncryption => boolean() | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:assignments, :list, MicrosoftGraph.Model.MicrosoftGraphDeviceCompliancePolicyAssignment)
     |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
     |> Deserializer.deserialize(:deviceSettingStateSummaries, :list, MicrosoftGraph.Model.MicrosoftGraphSettingStateDeviceSummary)
     |> Deserializer.deserialize(:deviceStatusOverview, :struct, MicrosoftGraph.Model.DeviceCompliancePolicyDeviceStatusOverview)
     |> Deserializer.deserialize(:deviceStatuses, :list, MicrosoftGraph.Model.MicrosoftGraphDeviceComplianceDeviceStatus)
     |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:scheduledActionsForRule, :list, MicrosoftGraph.Model.MicrosoftGraphDeviceComplianceScheduledActionForRule)
     |> Deserializer.deserialize(:userStatusOverview, :struct, MicrosoftGraph.Model.DeviceCompliancePolicyUserStatusOverview)
     |> Deserializer.deserialize(:userStatuses, :list, MicrosoftGraph.Model.MicrosoftGraphDeviceComplianceUserStatus)
     |> Deserializer.deserialize(:deviceThreatProtectionRequiredSecurityLevel, :struct, MicrosoftGraph.Model.MicrosoftGraphDeviceThreatProtectionLevel)
     |> Deserializer.deserialize(:passwordRequiredType, :struct, MicrosoftGraph.Model.MicrosoftGraphAndroidRequiredPasswordType)
  end
end
