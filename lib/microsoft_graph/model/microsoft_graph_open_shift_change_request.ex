# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphOpenShiftChangeRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :createdDateTime,
    :lastModifiedBy,
    :lastModifiedDateTime,
    :assignedTo,
    :managerActionDateTime,
    :managerActionMessage,
    :managerUserId,
    :senderDateTime,
    :senderMessage,
    :senderUserId,
    :state,
    :openShiftId
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :createdDateTime => DateTime.t | nil,
    :lastModifiedBy => MicrosoftGraph.Model.ChangeTrackedEntityLastModifiedBy.t | nil,
    :lastModifiedDateTime => DateTime.t | nil,
    :assignedTo => MicrosoftGraph.Model.ScheduleChangeRequestAssignedTo.t | nil,
    :managerActionDateTime => DateTime.t | nil,
    :managerActionMessage => String.t | nil,
    :managerUserId => String.t | nil,
    :senderDateTime => DateTime.t | nil,
    :senderMessage => String.t | nil,
    :senderUserId => String.t | nil,
    :state => MicrosoftGraph.Model.ScheduleChangeRequestState.t | nil,
    :openShiftId => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
     |> Deserializer.deserialize(:lastModifiedBy, :struct, MicrosoftGraph.Model.ChangeTrackedEntityLastModifiedBy)
     |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:assignedTo, :struct, MicrosoftGraph.Model.ScheduleChangeRequestAssignedTo)
     |> Deserializer.deserialize(:managerActionDateTime, :datetime, nil)
     |> Deserializer.deserialize(:senderDateTime, :datetime, nil)
     |> Deserializer.deserialize(:state, :struct, MicrosoftGraph.Model.ScheduleChangeRequestState)
  end
end
