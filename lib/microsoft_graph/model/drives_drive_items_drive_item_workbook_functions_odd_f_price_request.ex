# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsOddFPriceRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :basis,
    :firstCoupon,
    :frequency,
    :issue,
    :maturity,
    :rate,
    :redemption,
    :settlement,
    :yld
  ]

  @type t :: %__MODULE__{
    :basis => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :firstCoupon => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :frequency => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :issue => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :maturity => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :rate => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :redemption => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :settlement => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil,
    :yld => MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:basis, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:firstCoupon, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:frequency, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:issue, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:maturity, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:rate, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:redemption, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:settlement, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
     |> Deserializer.deserialize(:yld, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber)
  end
end
