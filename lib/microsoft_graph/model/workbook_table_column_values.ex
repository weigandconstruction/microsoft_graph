# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.WorkbookTableColumnValues do
  @moduledoc """
  Represents the raw values of the specified range. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type"
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t
  }

  def decode(value) do
    value
  end
end
