# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.AttributeMappingFunctionSchemaParametersInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :allowMultipleOccurrences,
    :name,
    :required,
    :type
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :allowMultipleOccurrences => boolean() | nil,
          :name => String.t() | nil,
          :required => boolean() | nil,
          :type => MicrosoftGraph.Model.MicrosoftGraphAttributeType.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:type, :struct, MicrosoftGraph.Model.MicrosoftGraphAttributeType)
  end
end
