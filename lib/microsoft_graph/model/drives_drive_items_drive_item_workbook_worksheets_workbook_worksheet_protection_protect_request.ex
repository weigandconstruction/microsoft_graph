# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookWorksheetsWorkbookWorksheetProtectionProtectRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :options
  ]

  @type t :: %__MODULE__{
          :options =>
            MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookWorksheetsWorkbookWorksheetProtectionProtectRequestOptions.t()
            | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :options,
      :struct,
      MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookWorksheetsWorkbookWorksheetProtectionProtectRequestOptions
    )
  end
end
