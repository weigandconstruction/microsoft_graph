# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAuditEvent do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :activity,
    :activityDateTime,
    :activityOperationType,
    :activityResult,
    :activityType,
    :actor,
    :category,
    :componentName,
    :correlationId,
    :displayName,
    :resources
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :activity => String.t() | nil,
          :activityDateTime => DateTime.t() | nil,
          :activityOperationType => String.t() | nil,
          :activityResult => String.t() | nil,
          :activityType => String.t() | nil,
          :actor => MicrosoftGraph.Model.AuditEventActor.t() | nil,
          :category => String.t() | nil,
          :componentName => String.t() | nil,
          :correlationId => String.t() | nil,
          :displayName => String.t() | nil,
          :resources => [MicrosoftGraph.Model.AuditEventResourcesInner.t()] | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:activityDateTime, :datetime, nil)
    |> Deserializer.deserialize(:actor, :struct, MicrosoftGraph.Model.AuditEventActor)
    |> Deserializer.deserialize(:resources, :list, MicrosoftGraph.Model.AuditEventResourcesInner)
  end
end
