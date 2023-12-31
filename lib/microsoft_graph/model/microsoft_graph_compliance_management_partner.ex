# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphComplianceManagementPartner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :androidEnrollmentAssignments,
    :androidOnboarded,
    :displayName,
    :iosEnrollmentAssignments,
    :iosOnboarded,
    :lastHeartbeatDateTime,
    :macOsEnrollmentAssignments,
    :macOsOnboarded,
    :partnerState
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :androidEnrollmentAssignments =>
            [
              MicrosoftGraph.Model.ComplianceManagementPartnerAndroidEnrollmentAssignmentsInner.t()
            ]
            | nil,
          :androidOnboarded => boolean() | nil,
          :displayName => String.t() | nil,
          :iosEnrollmentAssignments =>
            [
              MicrosoftGraph.Model.ComplianceManagementPartnerAndroidEnrollmentAssignmentsInner.t()
            ]
            | nil,
          :iosOnboarded => boolean() | nil,
          :lastHeartbeatDateTime => DateTime.t() | nil,
          :macOsEnrollmentAssignments =>
            [
              MicrosoftGraph.Model.ComplianceManagementPartnerAndroidEnrollmentAssignmentsInner.t()
            ]
            | nil,
          :macOsOnboarded => boolean() | nil,
          :partnerState =>
            MicrosoftGraph.Model.MicrosoftGraphDeviceManagementPartnerTenantState.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :androidEnrollmentAssignments,
      :list,
      MicrosoftGraph.Model.ComplianceManagementPartnerAndroidEnrollmentAssignmentsInner
    )
    |> Deserializer.deserialize(
      :iosEnrollmentAssignments,
      :list,
      MicrosoftGraph.Model.ComplianceManagementPartnerAndroidEnrollmentAssignmentsInner
    )
    |> Deserializer.deserialize(:lastHeartbeatDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :macOsEnrollmentAssignments,
      :list,
      MicrosoftGraph.Model.ComplianceManagementPartnerAndroidEnrollmentAssignmentsInner
    )
    |> Deserializer.deserialize(
      :partnerState,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphDeviceManagementPartnerTenantState
    )
  end
end
