# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.WorkbookChartSeriesFormat do
  @moduledoc """
  Represents the formatting of a chart series, which includes fill and line formatting. Read-only.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :fill,
    :line
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :fill => MicrosoftGraph.Model.WorkbookChartSeriesFormatFill.t() | nil,
          :line => MicrosoftGraph.Model.WorkbookChartSeriesFormatLine.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :fill,
      :struct,
      MicrosoftGraph.Model.WorkbookChartSeriesFormatFill
    )
    |> Deserializer.deserialize(
      :line,
      :struct,
      MicrosoftGraph.Model.WorkbookChartSeriesFormatLine
    )
  end
end
