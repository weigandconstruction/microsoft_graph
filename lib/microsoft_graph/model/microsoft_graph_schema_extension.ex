# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSchemaExtension do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :description,
    :owner,
    :properties,
    :status,
    :targetTypes
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :description => String.t | nil,
    :owner => String.t | nil,
    :properties => [MicrosoftGraph.Model.MicrosoftGraphExtensionSchemaProperty.t] | nil,
    :status => String.t | nil,
    :targetTypes => [String.t] | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:properties, :list, MicrosoftGraph.Model.MicrosoftGraphExtensionSchemaProperty)
  end
end
