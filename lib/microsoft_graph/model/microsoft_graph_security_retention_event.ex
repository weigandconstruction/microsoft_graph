# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSecurityRetentionEvent do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :createdBy,
    :createdDateTime,
    :description,
    :displayName,
    :eventPropagationResults,
    :eventQueries,
    :eventStatus,
    :eventTriggerDateTime,
    :lastModifiedBy,
    :lastModifiedDateTime,
    :lastStatusUpdateDateTime,
    :retentionEventType
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :createdBy => MicrosoftGraph.Model.RetentionEventCreatedBy.t() | nil,
          :createdDateTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :eventPropagationResults =>
            [MicrosoftGraph.Model.RetentionEventEventPropagationResultsInner.t()] | nil,
          :eventQueries => [MicrosoftGraph.Model.RetentionEventEventQueriesInner.t()] | nil,
          :eventStatus => MicrosoftGraph.Model.RetentionEventEventStatus.t() | nil,
          :eventTriggerDateTime => DateTime.t() | nil,
          :lastModifiedBy => MicrosoftGraph.Model.RetentionEventLastModifiedBy.t() | nil,
          :lastModifiedDateTime => DateTime.t() | nil,
          :lastStatusUpdateDateTime => DateTime.t() | nil,
          :retentionEventType => MicrosoftGraph.Model.RetentionEventRetentionEventType.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:createdBy, :struct, MicrosoftGraph.Model.RetentionEventCreatedBy)
    |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :eventPropagationResults,
      :list,
      MicrosoftGraph.Model.RetentionEventEventPropagationResultsInner
    )
    |> Deserializer.deserialize(
      :eventQueries,
      :list,
      MicrosoftGraph.Model.RetentionEventEventQueriesInner
    )
    |> Deserializer.deserialize(
      :eventStatus,
      :struct,
      MicrosoftGraph.Model.RetentionEventEventStatus
    )
    |> Deserializer.deserialize(:eventTriggerDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :lastModifiedBy,
      :struct,
      MicrosoftGraph.Model.RetentionEventLastModifiedBy
    )
    |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
    |> Deserializer.deserialize(:lastStatusUpdateDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :retentionEventType,
      :struct,
      MicrosoftGraph.Model.RetentionEventRetentionEventType
    )
  end
end
