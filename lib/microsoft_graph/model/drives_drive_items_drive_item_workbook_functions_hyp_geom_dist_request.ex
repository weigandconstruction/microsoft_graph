# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsHypGeomDistRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :cumulative,
    :numberPop,
    :numberSample,
    :populationS,
    :sampleS
  ]

  @type t :: %__MODULE__{
    :cumulative => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :numberPop => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :numberSample => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :populationS => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :sampleS => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:cumulative, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:numberPop, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:numberSample, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:populationS, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:sampleS, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
  end
end
