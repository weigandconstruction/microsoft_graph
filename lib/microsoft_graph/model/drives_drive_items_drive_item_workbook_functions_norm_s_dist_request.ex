# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsNormSDistRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :cumulative,
    :z
  ]

  @type t :: %__MODULE__{
          :cumulative =>
            MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber.t()
            | nil,
          :z =>
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
      :z,
      :struct,
      MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookFunctionsImSechRequestInumber
    )
  end
end
