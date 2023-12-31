# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAlertHistoryState do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :appId,
    :assignedTo,
    :comments,
    :feedback,
    :status,
    :updatedDateTime,
    :user
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :appId => String.t() | nil,
          :assignedTo => String.t() | nil,
          :comments => [String.t()] | nil,
          :feedback => MicrosoftGraph.Model.MicrosoftGraphAlertHistoryStateFeedback.t() | nil,
          :status => MicrosoftGraph.Model.MicrosoftGraphAlertHistoryStateStatus.t() | nil,
          :updatedDateTime => DateTime.t() | nil,
          :user => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :feedback,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphAlertHistoryStateFeedback
    )
    |> Deserializer.deserialize(
      :status,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphAlertHistoryStateStatus
    )
    |> Deserializer.deserialize(:updatedDateTime, :datetime, nil)
  end
end
