# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAttackSimulationSimulationUserCoverage do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :attackSimulationUser,
    :clickCount,
    :compromisedCount,
    :latestSimulationDateTime,
    :simulationCount
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :attackSimulationUser => MicrosoftGraph.Model.MicrosoftGraphAttackSimulationSimulationUserCoverageAttackSimulationUser.t | nil,
    :clickCount => integer() | nil,
    :compromisedCount => integer() | nil,
    :latestSimulationDateTime => DateTime.t | nil,
    :simulationCount => integer() | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:attackSimulationUser, :struct, MicrosoftGraph.Model.MicrosoftGraphAttackSimulationSimulationUserCoverageAttackSimulationUser)
     |> Deserializer.deserialize(:latestSimulationDateTime, :datetime, nil)
  end
end
