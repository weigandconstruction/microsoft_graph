# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsNegBinomDistRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :cumulative,
    :numberF,
    :numberS,
    :probabilityS
  ]

  @type t :: %__MODULE__{
    :cumulative => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :numberF => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :numberS => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :probabilityS => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:cumulative, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:numberF, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:numberS, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:probabilityS, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
  end
end
