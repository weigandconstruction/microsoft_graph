# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphMacOsGeneralDeviceConfiguration do
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
    :userStatusOverview,
    :userStatuses,
    :version,
    :compliantAppListType,
    :compliantAppsList,
    :emailInDomainSuffixes,
    :passwordBlockSimple,
    :passwordExpirationDays,
    :passwordMinimumCharacterSetCount,
    :passwordMinimumLength,
    :passwordMinutesOfInactivityBeforeLock,
    :passwordMinutesOfInactivityBeforeScreenTimeout,
    :passwordPreviousPasswordBlockCount,
    :passwordRequired,
    :passwordRequiredType
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :assignments => [MicrosoftGraph.Model.MicrosoftGraphDeviceConfigurationAssignment.t] | nil,
    :createdDateTime => DateTime.t | nil,
    :description => String.t | nil,
    :deviceSettingStateSummaries => [MicrosoftGraph.Model.MicrosoftGraphSettingStateDeviceSummary.t] | nil,
    :deviceStatusOverview => MicrosoftGraph.Model.DeviceConfigurationDeviceStatusOverview.t | nil,
    :deviceStatuses => [MicrosoftGraph.Model.MicrosoftGraphDeviceConfigurationDeviceStatus.t] | nil,
    :displayName => String.t | nil,
    :lastModifiedDateTime => DateTime.t | nil,
    :userStatusOverview => MicrosoftGraph.Model.DeviceConfigurationUserStatusOverview.t | nil,
    :userStatuses => [MicrosoftGraph.Model.MicrosoftGraphDeviceConfigurationUserStatus.t] | nil,
    :version => integer() | nil,
    :compliantAppListType => MicrosoftGraph.Model.MicrosoftGraphAppListType.t | nil,
    :compliantAppsList => [MicrosoftGraph.Model.MicrosoftGraphIosNetworkUsageRuleManagedAppsInner.t] | nil,
    :emailInDomainSuffixes => [String.t] | nil,
    :passwordBlockSimple => boolean() | nil,
    :passwordExpirationDays => integer() | nil,
    :passwordMinimumCharacterSetCount => integer() | nil,
    :passwordMinimumLength => integer() | nil,
    :passwordMinutesOfInactivityBeforeLock => integer() | nil,
    :passwordMinutesOfInactivityBeforeScreenTimeout => integer() | nil,
    :passwordPreviousPasswordBlockCount => integer() | nil,
    :passwordRequired => boolean() | nil,
    :passwordRequiredType => MicrosoftGraph.Model.MicrosoftGraphRequiredPasswordType.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:assignments, :list, MicrosoftGraph.Model.MicrosoftGraphDeviceConfigurationAssignment)
     |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
     |> Deserializer.deserialize(:deviceSettingStateSummaries, :list, MicrosoftGraph.Model.MicrosoftGraphSettingStateDeviceSummary)
     |> Deserializer.deserialize(:deviceStatusOverview, :struct, MicrosoftGraph.Model.DeviceConfigurationDeviceStatusOverview)
     |> Deserializer.deserialize(:deviceStatuses, :list, MicrosoftGraph.Model.MicrosoftGraphDeviceConfigurationDeviceStatus)
     |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:userStatusOverview, :struct, MicrosoftGraph.Model.DeviceConfigurationUserStatusOverview)
     |> Deserializer.deserialize(:userStatuses, :list, MicrosoftGraph.Model.MicrosoftGraphDeviceConfigurationUserStatus)
     |> Deserializer.deserialize(:compliantAppListType, :struct, MicrosoftGraph.Model.MicrosoftGraphAppListType)
     |> Deserializer.deserialize(:compliantAppsList, :list, MicrosoftGraph.Model.MicrosoftGraphIosNetworkUsageRuleManagedAppsInner)
     |> Deserializer.deserialize(:passwordRequiredType, :struct, MicrosoftGraph.Model.MicrosoftGraphRequiredPasswordType)
  end
end
