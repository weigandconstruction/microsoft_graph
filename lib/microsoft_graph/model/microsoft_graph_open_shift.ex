# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphOpenShift do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :createdDateTime,
    :lastModifiedBy,
    :lastModifiedDateTime,
    :draftOpenShift,
    :schedulingGroupId,
    :sharedOpenShift
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :createdDateTime => DateTime.t | nil,
    :lastModifiedBy => MicrosoftGraph.Model.ChangeTrackedEntityLastModifiedBy.t | nil,
    :lastModifiedDateTime => DateTime.t | nil,
    :draftOpenShift => MicrosoftGraph.Model.OpenShiftDraftOpenShift.t | nil,
    :schedulingGroupId => String.t | nil,
    :sharedOpenShift => MicrosoftGraph.Model.OpenShiftSharedOpenShift.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
     |> Deserializer.deserialize(:lastModifiedBy, :struct, MicrosoftGraph.Model.ChangeTrackedEntityLastModifiedBy)
     |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:draftOpenShift, :struct, MicrosoftGraph.Model.OpenShiftDraftOpenShift)
     |> Deserializer.deserialize(:sharedOpenShift, :struct, MicrosoftGraph.Model.OpenShiftSharedOpenShift)
  end
end
