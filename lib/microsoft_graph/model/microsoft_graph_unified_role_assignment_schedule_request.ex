# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphUnifiedRoleAssignmentScheduleRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :approvalId,
    :completedDateTime,
    :createdBy,
    :createdDateTime,
    :customData,
    :status,
    :action,
    :activatedUsing,
    :appScope,
    :appScopeId,
    :directoryScope,
    :directoryScopeId,
    :isValidationOnly,
    :justification,
    :principal,
    :principalId,
    :roleDefinition,
    :roleDefinitionId,
    :scheduleInfo,
    :targetSchedule,
    :targetScheduleId,
    :ticketInfo
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :approvalId => String.t() | nil,
          :completedDateTime => DateTime.t() | nil,
          :createdBy => MicrosoftGraph.Model.RequestCreatedBy.t() | nil,
          :createdDateTime => DateTime.t() | nil,
          :customData => String.t() | nil,
          :status => String.t() | nil,
          :action => MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestAction.t() | nil,
          :activatedUsing =>
            MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestActivatedUsing.t() | nil,
          :appScope =>
            MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestAppScope.t() | nil,
          :appScopeId => String.t() | nil,
          :directoryScope =>
            MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestDirectoryScope.t() | nil,
          :directoryScopeId => String.t() | nil,
          :isValidationOnly => boolean() | nil,
          :justification => String.t() | nil,
          :principal =>
            MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestPrincipal.t() | nil,
          :principalId => String.t() | nil,
          :roleDefinition =>
            MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestRoleDefinition.t() | nil,
          :roleDefinitionId => String.t() | nil,
          :scheduleInfo =>
            MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestScheduleInfo.t() | nil,
          :targetSchedule =>
            MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestTargetSchedule.t() | nil,
          :targetScheduleId => String.t() | nil,
          :ticketInfo =>
            MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestTicketInfo.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:completedDateTime, :datetime, nil)
    |> Deserializer.deserialize(:createdBy, :struct, MicrosoftGraph.Model.RequestCreatedBy)
    |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :action,
      :struct,
      MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestAction
    )
    |> Deserializer.deserialize(
      :activatedUsing,
      :struct,
      MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestActivatedUsing
    )
    |> Deserializer.deserialize(
      :appScope,
      :struct,
      MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestAppScope
    )
    |> Deserializer.deserialize(
      :directoryScope,
      :struct,
      MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestDirectoryScope
    )
    |> Deserializer.deserialize(
      :principal,
      :struct,
      MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestPrincipal
    )
    |> Deserializer.deserialize(
      :roleDefinition,
      :struct,
      MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestRoleDefinition
    )
    |> Deserializer.deserialize(
      :scheduleInfo,
      :struct,
      MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestScheduleInfo
    )
    |> Deserializer.deserialize(
      :targetSchedule,
      :struct,
      MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestTargetSchedule
    )
    |> Deserializer.deserialize(
      :ticketInfo,
      :struct,
      MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestTicketInfo
    )
  end
end
