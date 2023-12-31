# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DeviceManagementUserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric do
  @moduledoc """
  User experience analytics work from anywhere hardware readiness metrics.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :osCheckFailedPercentage,
    :processor64BitCheckFailedPercentage,
    :processorCoreCountCheckFailedPercentage,
    :processorFamilyCheckFailedPercentage,
    :processorSpeedCheckFailedPercentage,
    :ramCheckFailedPercentage,
    :secureBootCheckFailedPercentage,
    :storageCheckFailedPercentage,
    :totalDeviceCount,
    :tpmCheckFailedPercentage,
    :upgradeEligibleDeviceCount
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :osCheckFailedPercentage =>
            MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetricOsCheckFailedPercentage.t()
            | nil,
          :processor64BitCheckFailedPercentage =>
            MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetricProcessor64BitCheckFailedPercentage.t()
            | nil,
          :processorCoreCountCheckFailedPercentage =>
            MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetricProcessorCoreCountCheckFailedPercentage.t()
            | nil,
          :processorFamilyCheckFailedPercentage =>
            MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetricProcessorFamilyCheckFailedPercentage.t()
            | nil,
          :processorSpeedCheckFailedPercentage =>
            MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetricProcessorSpeedCheckFailedPercentage.t()
            | nil,
          :ramCheckFailedPercentage =>
            MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetricRamCheckFailedPercentage.t()
            | nil,
          :secureBootCheckFailedPercentage =>
            MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetricSecureBootCheckFailedPercentage.t()
            | nil,
          :storageCheckFailedPercentage =>
            MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetricStorageCheckFailedPercentage.t()
            | nil,
          :totalDeviceCount => integer() | nil,
          :tpmCheckFailedPercentage =>
            MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetricTpmCheckFailedPercentage.t()
            | nil,
          :upgradeEligibleDeviceCount => integer() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :osCheckFailedPercentage,
      :struct,
      MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetricOsCheckFailedPercentage
    )
    |> Deserializer.deserialize(
      :processor64BitCheckFailedPercentage,
      :struct,
      MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetricProcessor64BitCheckFailedPercentage
    )
    |> Deserializer.deserialize(
      :processorCoreCountCheckFailedPercentage,
      :struct,
      MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetricProcessorCoreCountCheckFailedPercentage
    )
    |> Deserializer.deserialize(
      :processorFamilyCheckFailedPercentage,
      :struct,
      MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetricProcessorFamilyCheckFailedPercentage
    )
    |> Deserializer.deserialize(
      :processorSpeedCheckFailedPercentage,
      :struct,
      MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetricProcessorSpeedCheckFailedPercentage
    )
    |> Deserializer.deserialize(
      :ramCheckFailedPercentage,
      :struct,
      MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetricRamCheckFailedPercentage
    )
    |> Deserializer.deserialize(
      :secureBootCheckFailedPercentage,
      :struct,
      MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetricSecureBootCheckFailedPercentage
    )
    |> Deserializer.deserialize(
      :storageCheckFailedPercentage,
      :struct,
      MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetricStorageCheckFailedPercentage
    )
    |> Deserializer.deserialize(
      :tpmCheckFailedPercentage,
      :struct,
      MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetricTpmCheckFailedPercentage
    )
  end
end
