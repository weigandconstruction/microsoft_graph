# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphExtensionSchemaProperty do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :name,
    :type
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :name => String.t() | nil,
          :type => String.t() | nil
        }

  def decode(value) do
    value
  end
end
