# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAttackSimulationOperation do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :createdDateTime,
    :lastActionDateTime,
    :resourceLocation,
    :status,
    :statusDetail,
    :percentageCompleted,
    :tenantId,
    :type
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :createdDateTime => DateTime.t() | nil,
          :lastActionDateTime => DateTime.t() | nil,
          :resourceLocation => String.t() | nil,
          :status => MicrosoftGraph.Model.LongRunningOperationStatus.t() | nil,
          :statusDetail => String.t() | nil,
          :percentageCompleted => integer() | nil,
          :tenantId => String.t() | nil,
          :type => MicrosoftGraph.Model.AttackSimulationOperationType.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
    |> Deserializer.deserialize(:lastActionDateTime, :datetime, nil)
    |> Deserializer.deserialize(:status, :struct, MicrosoftGraph.Model.LongRunningOperationStatus)
    |> Deserializer.deserialize(
      :type,
      :struct,
      MicrosoftGraph.Model.AttackSimulationOperationType
    )
  end
end
