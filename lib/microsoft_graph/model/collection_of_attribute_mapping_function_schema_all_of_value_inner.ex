# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.CollectionOfAttributeMappingFunctionSchemaAllOfValueInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :parameters
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :parameters =>
            [MicrosoftGraph.Model.AttributeMappingFunctionSchemaParametersInner.t()] | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :parameters,
      :list,
      MicrosoftGraph.Model.AttributeMappingFunctionSchemaParametersInner
    )
  end
end
