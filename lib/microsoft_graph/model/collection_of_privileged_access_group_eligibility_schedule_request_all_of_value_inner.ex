# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.CollectionOfPrivilegedAccessGroupEligibilityScheduleRequestAllOfValueInner do
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
    :isValidationOnly,
    :justification,
    :scheduleInfo,
    :ticketInfo,
    :accessId,
    :group,
    :groupId,
    :principal,
    :principalId,
    :targetSchedule,
    :targetScheduleId
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
          :action => MicrosoftGraph.Model.PrivilegedAccessScheduleRequestAction.t() | nil,
          :isValidationOnly => boolean() | nil,
          :justification => String.t() | nil,
          :scheduleInfo =>
            MicrosoftGraph.Model.PrivilegedAccessScheduleRequestScheduleInfo.t() | nil,
          :ticketInfo => MicrosoftGraph.Model.PrivilegedAccessScheduleRequestTicketInfo.t() | nil,
          :accessId =>
            MicrosoftGraph.Model.PrivilegedAccessGroupEligibilityScheduleRequestAccessId.t() | nil,
          :group =>
            MicrosoftGraph.Model.PrivilegedAccessGroupEligibilityScheduleRequestGroup.t() | nil,
          :groupId => String.t() | nil,
          :principal =>
            MicrosoftGraph.Model.PrivilegedAccessGroupEligibilityScheduleInstancePrincipal.t()
            | nil,
          :principalId => String.t() | nil,
          :targetSchedule =>
            MicrosoftGraph.Model.PrivilegedAccessGroupEligibilityScheduleRequestTargetSchedule.t()
            | nil,
          :targetScheduleId => String.t() | nil
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
      MicrosoftGraph.Model.PrivilegedAccessScheduleRequestAction
    )
    |> Deserializer.deserialize(
      :scheduleInfo,
      :struct,
      MicrosoftGraph.Model.PrivilegedAccessScheduleRequestScheduleInfo
    )
    |> Deserializer.deserialize(
      :ticketInfo,
      :struct,
      MicrosoftGraph.Model.PrivilegedAccessScheduleRequestTicketInfo
    )
    |> Deserializer.deserialize(
      :accessId,
      :struct,
      MicrosoftGraph.Model.PrivilegedAccessGroupEligibilityScheduleRequestAccessId
    )
    |> Deserializer.deserialize(
      :group,
      :struct,
      MicrosoftGraph.Model.PrivilegedAccessGroupEligibilityScheduleRequestGroup
    )
    |> Deserializer.deserialize(
      :principal,
      :struct,
      MicrosoftGraph.Model.PrivilegedAccessGroupEligibilityScheduleInstancePrincipal
    )
    |> Deserializer.deserialize(
      :targetSchedule,
      :struct,
      MicrosoftGraph.Model.PrivilegedAccessGroupEligibilityScheduleRequestTargetSchedule
    )
  end
end
