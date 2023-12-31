# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsWorkFromAnywhereModelPerformance do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :cloudIdentityScore,
    :cloudManagementScore,
    :cloudProvisioningScore,
    :healthStatus,
    :manufacturer,
    :model,
    :modelDeviceCount,
    :windowsScore,
    :workFromAnywhereScore
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :cloudIdentityScore =>
            MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereModelPerformanceCloudIdentityScore.t()
            | nil,
          :cloudManagementScore =>
            MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereModelPerformanceCloudManagementScore.t()
            | nil,
          :cloudProvisioningScore =>
            MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereModelPerformanceCloudProvisioningScore.t()
            | nil,
          :healthStatus =>
            MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsHealthState.t() | nil,
          :manufacturer => String.t() | nil,
          :model => String.t() | nil,
          :modelDeviceCount => integer() | nil,
          :windowsScore =>
            MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereModelPerformanceWindowsScore.t()
            | nil,
          :workFromAnywhereScore =>
            MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereModelPerformanceWorkFromAnywhereScore.t()
            | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :cloudIdentityScore,
      :struct,
      MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereModelPerformanceCloudIdentityScore
    )
    |> Deserializer.deserialize(
      :cloudManagementScore,
      :struct,
      MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereModelPerformanceCloudManagementScore
    )
    |> Deserializer.deserialize(
      :cloudProvisioningScore,
      :struct,
      MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereModelPerformanceCloudProvisioningScore
    )
    |> Deserializer.deserialize(
      :healthStatus,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsHealthState
    )
    |> Deserializer.deserialize(
      :windowsScore,
      :struct,
      MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereModelPerformanceWindowsScore
    )
    |> Deserializer.deserialize(
      :workFromAnywhereScore,
      :struct,
      MicrosoftGraph.Model.UserExperienceAnalyticsWorkFromAnywhereModelPerformanceWorkFromAnywhereScore
    )
  end
end
