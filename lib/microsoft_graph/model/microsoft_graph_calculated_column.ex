# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphCalculatedColumn do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :format,
    :formula,
    :outputType
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :format => String.t() | nil,
          :formula => String.t() | nil,
          :outputType => String.t() | nil
        }

  def decode(value) do
    value
  end
end
