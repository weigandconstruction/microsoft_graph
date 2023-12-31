# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsVlookupRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :colIndexNum,
    :lookupValue,
    :rangeLookup,
    :tableArray
  ]

  @type t :: %__MODULE__{
          :colIndexNum =>
            MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t()
            | nil,
          :lookupValue =>
            MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t()
            | nil,
          :rangeLookup =>
            MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t()
            | nil,
          :tableArray =>
            MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t()
            | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :colIndexNum,
      :struct,
      MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber
    )
    |> Deserializer.deserialize(
      :lookupValue,
      :struct,
      MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber
    )
    |> Deserializer.deserialize(
      :rangeLookup,
      :struct,
      MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber
    )
    |> Deserializer.deserialize(
      :tableArray,
      :struct,
      MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber
    )
  end
end
