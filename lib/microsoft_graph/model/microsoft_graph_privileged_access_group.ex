# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphPrivilegedAccessGroup do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :assignmentApprovals,
    :assignmentScheduleInstances,
    :assignmentScheduleRequests,
    :assignmentSchedules,
    :eligibilityScheduleInstances,
    :eligibilityScheduleRequests,
    :eligibilitySchedules
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :assignmentApprovals => [MicrosoftGraph.Model.MicrosoftGraphApproval.t()] | nil,
          :assignmentScheduleInstances =>
            [
              MicrosoftGraph.Model.MicrosoftGraphPrivilegedAccessGroupAssignmentScheduleInstance.t()
            ]
            | nil,
          :assignmentScheduleRequests =>
            [
              MicrosoftGraph.Model.MicrosoftGraphPrivilegedAccessGroupAssignmentScheduleRequest.t()
            ]
            | nil,
          :assignmentSchedules =>
            [MicrosoftGraph.Model.MicrosoftGraphPrivilegedAccessGroupAssignmentSchedule.t()] | nil,
          :eligibilityScheduleInstances =>
            [
              MicrosoftGraph.Model.MicrosoftGraphPrivilegedAccessGroupEligibilityScheduleInstance.t()
            ]
            | nil,
          :eligibilityScheduleRequests =>
            [
              MicrosoftGraph.Model.MicrosoftGraphPrivilegedAccessGroupEligibilityScheduleRequest.t()
            ]
            | nil,
          :eligibilitySchedules =>
            [MicrosoftGraph.Model.MicrosoftGraphPrivilegedAccessGroupEligibilitySchedule.t()]
            | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :assignmentApprovals,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphApproval
    )
    |> Deserializer.deserialize(
      :assignmentScheduleInstances,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphPrivilegedAccessGroupAssignmentScheduleInstance
    )
    |> Deserializer.deserialize(
      :assignmentScheduleRequests,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphPrivilegedAccessGroupAssignmentScheduleRequest
    )
    |> Deserializer.deserialize(
      :assignmentSchedules,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphPrivilegedAccessGroupAssignmentSchedule
    )
    |> Deserializer.deserialize(
      :eligibilityScheduleInstances,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphPrivilegedAccessGroupEligibilityScheduleInstance
    )
    |> Deserializer.deserialize(
      :eligibilityScheduleRequests,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphPrivilegedAccessGroupEligibilityScheduleRequest
    )
    |> Deserializer.deserialize(
      :eligibilitySchedules,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphPrivilegedAccessGroupEligibilitySchedule
    )
  end
end
