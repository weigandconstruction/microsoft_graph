# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.CollectionOfPrivilegedAccessGroupEligibilityScheduleAllOfValueInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :createdDateTime,
    :createdUsing,
    :modifiedDateTime,
    :scheduleInfo,
    :status,
    :accessId,
    :group,
    :groupId,
    :memberType,
    :principal,
    :principalId
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :createdDateTime => DateTime.t | nil,
    :createdUsing => String.t | nil,
    :modifiedDateTime => DateTime.t | nil,
    :scheduleInfo => MicrosoftGraph.Model.PrivilegedAccessScheduleScheduleInfo.t | nil,
    :status => String.t | nil,
    :accessId => MicrosoftGraph.Model.PrivilegedAccessGroupEligibilityScheduleAccessId.t | nil,
    :group => MicrosoftGraph.Model.PrivilegedAccessGroupEligibilityScheduleGroup.t | nil,
    :groupId => String.t | nil,
    :memberType => MicrosoftGraph.Model.PrivilegedAccessGroupEligibilityScheduleMemberType.t | nil,
    :principal => MicrosoftGraph.Model.PrivilegedAccessGroupEligibilitySchedulePrincipal.t | nil,
    :principalId => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
     |> Deserializer.deserialize(:modifiedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:scheduleInfo, :struct, MicrosoftGraph.Model.PrivilegedAccessScheduleScheduleInfo)
     |> Deserializer.deserialize(:accessId, :struct, MicrosoftGraph.Model.PrivilegedAccessGroupEligibilityScheduleAccessId)
     |> Deserializer.deserialize(:group, :struct, MicrosoftGraph.Model.PrivilegedAccessGroupEligibilityScheduleGroup)
     |> Deserializer.deserialize(:memberType, :struct, MicrosoftGraph.Model.PrivilegedAccessGroupEligibilityScheduleMemberType)
     |> Deserializer.deserialize(:principal, :struct, MicrosoftGraph.Model.PrivilegedAccessGroupEligibilitySchedulePrincipal)
  end
end
