# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSearchAlterationAlteredQueryTokensInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :length,
    :offset,
    :suggestion
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :length => integer() | nil,
          :offset => integer() | nil,
          :suggestion => String.t() | nil
        }

  def decode(value) do
    value
  end
end
