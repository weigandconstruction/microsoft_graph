# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphIdentitySetDevice do
  @moduledoc """
  Optional. The device associated with this action.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :displayName,
    :id
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :displayName => String.t() | nil,
          :id => String.t() | nil
        }

  def decode(value) do
    value
  end
end
