# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsRandBetweenRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :bottom,
    :top
  ]

  @type t :: %__MODULE__{
          :bottom =>
            MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t()
            | nil,
          :top =>
            MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t()
            | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :bottom,
      :struct,
      MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber
    )
    |> Deserializer.deserialize(
      :top,
      :struct,
      MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber
    )
  end
end
