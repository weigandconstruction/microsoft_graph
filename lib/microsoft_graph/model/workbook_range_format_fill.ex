# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.WorkbookRangeFormatFill do
  @moduledoc """
  Returns the fill object defined on the overall range. Read-only.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :color
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :color => String.t() | nil
        }

  def decode(value) do
    value
  end
end
