# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSimulationAutomation do
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
    :lastModifiedBy,
    :lastModifiedDateTime,
    :lastRunDateTime,
    :nextRunDateTime,
    :runs,
    :status
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :createdBy => MicrosoftGraph.Model.SimulationAutomationCreatedBy.t | nil,
    :createdDateTime => DateTime.t | nil,
    :description => String.t | nil,
    :displayName => String.t | nil,
    :lastModifiedBy => MicrosoftGraph.Model.SimulationAutomationLastModifiedBy.t | nil,
    :lastModifiedDateTime => DateTime.t | nil,
    :lastRunDateTime => DateTime.t | nil,
    :nextRunDateTime => DateTime.t | nil,
    :runs => [MicrosoftGraph.Model.MicrosoftGraphSimulationAutomationRun.t] | nil,
    :status => MicrosoftGraph.Model.SimulationAutomationStatus.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:createdBy, :struct, MicrosoftGraph.Model.SimulationAutomationCreatedBy)
     |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
     |> Deserializer.deserialize(:lastModifiedBy, :struct, MicrosoftGraph.Model.SimulationAutomationLastModifiedBy)
     |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:lastRunDateTime, :datetime, nil)
     |> Deserializer.deserialize(:nextRunDateTime, :datetime, nil)
     |> Deserializer.deserialize(:runs, :list, MicrosoftGraph.Model.MicrosoftGraphSimulationAutomationRun)
     |> Deserializer.deserialize(:status, :struct, MicrosoftGraph.Model.SimulationAutomationStatus)
  end
end
