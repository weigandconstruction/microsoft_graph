# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsAccrIntRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :basis,
    :calcMethod,
    :firstInterest,
    :frequency,
    :issue,
    :par,
    :rate,
    :settlement
  ]

  @type t :: %__MODULE__{
    :basis => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :calcMethod => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :firstInterest => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :frequency => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :issue => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :par => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :rate => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :settlement => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:basis, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:calcMethod, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:firstInterest, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:frequency, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:issue, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:par, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:rate, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:settlement, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
  end
end
