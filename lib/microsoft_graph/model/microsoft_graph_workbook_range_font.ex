# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphWorkbookRangeFont do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :bold,
    :color,
    :italic,
    :name,
    :size,
    :underline
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :bold => boolean() | nil,
          :color => String.t() | nil,
          :italic => boolean() | nil,
          :name => String.t() | nil,
          :size => MicrosoftGraph.Model.WorkbookRangeFontSize.t() | nil,
          :underline => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:size, :struct, MicrosoftGraph.Model.WorkbookRangeFontSize)
  end
end
