# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookWorksheetsWorkbookWorksheetTablesWorkbookTableColumnsWorkbookTableColumnFilterApplyRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :criteria
  ]

  @type t :: %__MODULE__{
          :criteria =>
            MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookWorksheetsWorkbookWorksheetTablesWorkbookTableColumnsWorkbookTableColumnFilterApplyRequestCriteria.t()
            | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :criteria,
      :struct,
      MicrosoftGraph.Model.DrivesDriveItemsDriveItemWorkbookWorksheetsWorkbookWorksheetTablesWorkbookTableColumnsWorkbookTableColumnFilterApplyRequestCriteria
    )
  end
end
