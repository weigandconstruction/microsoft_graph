# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.TermLabelsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :isDefault,
    :languageTag,
    :name
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :isDefault => boolean() | nil,
    :languageTag => String.t | nil,
    :name => String.t | nil
  }

  def decode(value) do
    value
  end
end
