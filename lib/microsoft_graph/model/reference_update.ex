# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.ReferenceUpdate do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.id",
    :"@odata.type"
  ]

  @type t :: %__MODULE__{
          :"@odata.id" => String.t() | nil,
          :"@odata.type" => String.t() | nil
        }

  def decode(value) do
    value
  end
end
