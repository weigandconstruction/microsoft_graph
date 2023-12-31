# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphWindowsUpdateForBusinessConfiguration do
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
    :qualityUpdatesPaused,
    :automaticUpdateMode,
    :userPauseAccess,
    :postponeRebootUntilAfterDeadline,
    :featureUpdatesRollbackWindowInDays,
    :featureUpdatesDeferralPeriodInDays,
    :deadlineForQualityUpdatesInDays,
    :installationSchedule,
    :scheduleImminentRestartWarningInMinutes,
    :autoRestartNotificationDismissal,
    :featureUpdatesPaused,
    :featureUpdatesRollbackStartDateTime,
    :featureUpdatesWillBeRolledBack,
    :allowWindows11Upgrade,
    :deadlineForFeatureUpdatesInDays,
    :featureUpdatesPauseExpiryDateTime,
    :skipChecksBeforeRestart,
    :deadlineGracePeriodInDays,
    :engagedRestartSnoozeScheduleInDays,
    :qualityUpdatesRollbackStartDateTime,
    :deliveryOptimizationMode,
    :qualityUpdatesPauseExpiryDateTime,
    :updateWeeks,
    :prereleaseFeatures,
    :updateNotificationLevel,
    :qualityUpdatesWillBeRolledBack,
    :userWindowsUpdateScanAccess,
    :engagedRestartDeadlineInDays,
    :scheduleRestartWarningInHours,
    :qualityUpdatesPauseStartDate,
    :featureUpdatesPauseStartDate,
    :driversExcluded,
    :businessReadyUpdatesOnly,
    :qualityUpdatesDeferralPeriodInDays,
    :microsoftUpdateServiceAllowed,
    :engagedRestartTransitionScheduleInDays
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :assignments =>
            [MicrosoftGraph.Model.MicrosoftGraphDeviceConfigurationAssignment.t()] | nil,
          :createdDateTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :deviceSettingStateSummaries =>
            [MicrosoftGraph.Model.MicrosoftGraphSettingStateDeviceSummary.t()] | nil,
          :deviceStatusOverview =>
            MicrosoftGraph.Model.DeviceConfigurationDeviceStatusOverview.t() | nil,
          :deviceStatuses =>
            [MicrosoftGraph.Model.MicrosoftGraphDeviceConfigurationDeviceStatus.t()] | nil,
          :displayName => String.t() | nil,
          :lastModifiedDateTime => DateTime.t() | nil,
          :userStatusOverview =>
            MicrosoftGraph.Model.DeviceConfigurationUserStatusOverview.t() | nil,
          :userStatuses =>
            [MicrosoftGraph.Model.MicrosoftGraphDeviceConfigurationUserStatus.t()] | nil,
          :version => integer() | nil,
          :qualityUpdatesPaused => boolean() | nil,
          :automaticUpdateMode =>
            MicrosoftGraph.Model.MicrosoftGraphAutomaticUpdateMode.t() | nil,
          :userPauseAccess => MicrosoftGraph.Model.MicrosoftGraphEnablement.t() | nil,
          :postponeRebootUntilAfterDeadline => boolean() | nil,
          :featureUpdatesRollbackWindowInDays => integer() | nil,
          :featureUpdatesDeferralPeriodInDays => integer() | nil,
          :deadlineForQualityUpdatesInDays => integer() | nil,
          :installationSchedule =>
            MicrosoftGraph.Model.WindowsUpdateForBusinessConfigurationInstallationSchedule.t()
            | nil,
          :scheduleImminentRestartWarningInMinutes => integer() | nil,
          :autoRestartNotificationDismissal =>
            MicrosoftGraph.Model.MicrosoftGraphAutoRestartNotificationDismissalMethod.t() | nil,
          :featureUpdatesPaused => boolean() | nil,
          :featureUpdatesRollbackStartDateTime => DateTime.t() | nil,
          :featureUpdatesWillBeRolledBack => boolean() | nil,
          :allowWindows11Upgrade => boolean() | nil,
          :deadlineForFeatureUpdatesInDays => integer() | nil,
          :featureUpdatesPauseExpiryDateTime => DateTime.t() | nil,
          :skipChecksBeforeRestart => boolean() | nil,
          :deadlineGracePeriodInDays => integer() | nil,
          :engagedRestartSnoozeScheduleInDays => integer() | nil,
          :qualityUpdatesRollbackStartDateTime => DateTime.t() | nil,
          :deliveryOptimizationMode =>
            MicrosoftGraph.Model.MicrosoftGraphWindowsDeliveryOptimizationMode.t() | nil,
          :qualityUpdatesPauseExpiryDateTime => DateTime.t() | nil,
          :updateWeeks =>
            MicrosoftGraph.Model.WindowsUpdateForBusinessConfigurationUpdateWeeks.t() | nil,
          :prereleaseFeatures => MicrosoftGraph.Model.MicrosoftGraphPrereleaseFeatures.t() | nil,
          :updateNotificationLevel =>
            MicrosoftGraph.Model.MicrosoftGraphWindowsUpdateNotificationDisplayOption.t() | nil,
          :qualityUpdatesWillBeRolledBack => boolean() | nil,
          :userWindowsUpdateScanAccess => MicrosoftGraph.Model.MicrosoftGraphEnablement.t() | nil,
          :engagedRestartDeadlineInDays => integer() | nil,
          :scheduleRestartWarningInHours => integer() | nil,
          :qualityUpdatesPauseStartDate => Date.t() | nil,
          :featureUpdatesPauseStartDate => Date.t() | nil,
          :driversExcluded => boolean() | nil,
          :businessReadyUpdatesOnly =>
            MicrosoftGraph.Model.MicrosoftGraphWindowsUpdateType.t() | nil,
          :qualityUpdatesDeferralPeriodInDays => integer() | nil,
          :microsoftUpdateServiceAllowed => boolean() | nil,
          :engagedRestartTransitionScheduleInDays => integer() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :assignments,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphDeviceConfigurationAssignment
    )
    |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :deviceSettingStateSummaries,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphSettingStateDeviceSummary
    )
    |> Deserializer.deserialize(
      :deviceStatusOverview,
      :struct,
      MicrosoftGraph.Model.DeviceConfigurationDeviceStatusOverview
    )
    |> Deserializer.deserialize(
      :deviceStatuses,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphDeviceConfigurationDeviceStatus
    )
    |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :userStatusOverview,
      :struct,
      MicrosoftGraph.Model.DeviceConfigurationUserStatusOverview
    )
    |> Deserializer.deserialize(
      :userStatuses,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphDeviceConfigurationUserStatus
    )
    |> Deserializer.deserialize(
      :automaticUpdateMode,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphAutomaticUpdateMode
    )
    |> Deserializer.deserialize(
      :userPauseAccess,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphEnablement
    )
    |> Deserializer.deserialize(
      :installationSchedule,
      :struct,
      MicrosoftGraph.Model.WindowsUpdateForBusinessConfigurationInstallationSchedule
    )
    |> Deserializer.deserialize(
      :autoRestartNotificationDismissal,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphAutoRestartNotificationDismissalMethod
    )
    |> Deserializer.deserialize(:featureUpdatesRollbackStartDateTime, :datetime, nil)
    |> Deserializer.deserialize(:featureUpdatesPauseExpiryDateTime, :datetime, nil)
    |> Deserializer.deserialize(:qualityUpdatesRollbackStartDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :deliveryOptimizationMode,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphWindowsDeliveryOptimizationMode
    )
    |> Deserializer.deserialize(:qualityUpdatesPauseExpiryDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :updateWeeks,
      :struct,
      MicrosoftGraph.Model.WindowsUpdateForBusinessConfigurationUpdateWeeks
    )
    |> Deserializer.deserialize(
      :prereleaseFeatures,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphPrereleaseFeatures
    )
    |> Deserializer.deserialize(
      :updateNotificationLevel,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphWindowsUpdateNotificationDisplayOption
    )
    |> Deserializer.deserialize(
      :userWindowsUpdateScanAccess,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphEnablement
    )
    |> Deserializer.deserialize(:qualityUpdatesPauseStartDate, :date, nil)
    |> Deserializer.deserialize(:featureUpdatesPauseStartDate, :date, nil)
    |> Deserializer.deserialize(
      :businessReadyUpdatesOnly,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphWindowsUpdateType
    )
  end
end
