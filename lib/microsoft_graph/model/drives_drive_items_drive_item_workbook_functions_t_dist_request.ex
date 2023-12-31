# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsTDistRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :cumulative,
    :degFreedom,
    :x
  ]

  @type t :: %__MODULE__{
          :cumulative =>
            MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t()
            | nil,
          :degFreedom =>
            MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t()
            | nil,
          :x =>
            MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t()
            | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :cumulative,
      :struct,
      MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber
    )
    |> Deserializer.deserialize(
      :degFreedom,
      :struct,
      MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber
    )
    |> Deserializer.deserialize(
      :x,
      :struct,
      MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber
    )
  end
end
