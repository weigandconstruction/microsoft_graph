# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAttackSimulationTrainingUserCoverageUserTrainingsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :assignedDateTime,
    :completionDateTime,
    :displayName,
    :trainingStatus
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :assignedDateTime => DateTime.t | nil,
    :completionDateTime => DateTime.t | nil,
    :displayName => String.t | nil,
    :trainingStatus => MicrosoftGraph.Model.MicrosoftGraphUserTrainingStatusInfoTrainingStatus.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:assignedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:completionDateTime, :datetime, nil)
     |> Deserializer.deserialize(:trainingStatus, :struct, MicrosoftGraph.Model.MicrosoftGraphUserTrainingStatusInfoTrainingStatus)
  end
end
