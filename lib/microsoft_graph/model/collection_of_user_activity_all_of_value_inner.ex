# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.CollectionOfUserActivityAllOfValueInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :activationUrl,
    :activitySourceHost,
    :appActivityId,
    :appDisplayName,
    :contentInfo,
    :contentUrl,
    :createdDateTime,
    :expirationDateTime,
    :fallbackUrl,
    :historyItems,
    :lastModifiedDateTime,
    :status,
    :userTimezone,
    :visualElements
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :activationUrl => String.t | nil,
    :activitySourceHost => String.t | nil,
    :appActivityId => String.t | nil,
    :appDisplayName => String.t | nil,
    :contentInfo => MicrosoftGraph.Model.UserActivityContentInfo.t | nil,
    :contentUrl => String.t | nil,
    :createdDateTime => DateTime.t | nil,
    :expirationDateTime => DateTime.t | nil,
    :fallbackUrl => String.t | nil,
    :historyItems => [MicrosoftGraph.Model.MicrosoftGraphActivityHistoryItem.t] | nil,
    :lastModifiedDateTime => DateTime.t | nil,
    :status => MicrosoftGraph.Model.UserActivityStatus.t | nil,
    :userTimezone => String.t | nil,
    :visualElements => MicrosoftGraph.Model.MicrosoftGraphVisualInfo.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:contentInfo, :struct, MicrosoftGraph.Model.UserActivityContentInfo)
     |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
     |> Deserializer.deserialize(:expirationDateTime, :datetime, nil)
     |> Deserializer.deserialize(:historyItems, :list, MicrosoftGraph.Model.MicrosoftGraphActivityHistoryItem)
     |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:status, :struct, MicrosoftGraph.Model.UserActivityStatus)
     |> Deserializer.deserialize(:visualElements, :struct, MicrosoftGraph.Model.MicrosoftGraphVisualInfo)
  end
end
