# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSchedulingGroup do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :createdDateTime,
    :lastModifiedBy,
    :lastModifiedDateTime,
    :displayName,
    :isActive,
    :userIds
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :createdDateTime => DateTime.t | nil,
    :lastModifiedBy => MicrosoftGraph.Model.ChangeTrackedEntityLastModifiedBy.t | nil,
    :lastModifiedDateTime => DateTime.t | nil,
    :displayName => String.t | nil,
    :isActive => boolean() | nil,
    :userIds => [String.t] | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
     |> Deserializer.deserialize(:lastModifiedBy, :struct, MicrosoftGraph.Model.ChangeTrackedEntityLastModifiedBy)
     |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
  end
end
