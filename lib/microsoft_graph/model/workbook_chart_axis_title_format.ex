# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.WorkbookChartAxisTitleFormat do
  @moduledoc """
  Represents the formatting of chart axis title. Read-only.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :font
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :font => MicrosoftGraph.Model.WorkbookChartAxisTitleFormatFont.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:font, :struct, MicrosoftGraph.Model.WorkbookChartAxisTitleFormatFont)
  end
end
