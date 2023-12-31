# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.ListList do
  @moduledoc """
  Contains more details about the list.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :contentTypesEnabled,
    :hidden,
    :template
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :contentTypesEnabled => boolean() | nil,
          :hidden => boolean() | nil,
          :template => String.t() | nil
        }

  def decode(value) do
    value
  end
end
