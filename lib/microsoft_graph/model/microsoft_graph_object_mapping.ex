# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphObjectMapping do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :attributeMappings,
    :enabled,
    :flowTypes,
    :metadata,
    :name,
    :scope,
    :sourceObjectName,
    :targetObjectName
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :attributeMappings => [MicrosoftGraph.Model.MicrosoftGraphObjectMappingAttributeMappingsInner.t] | nil,
    :enabled => boolean() | nil,
    :flowTypes => MicrosoftGraph.Model.MicrosoftGraphObjectFlowTypes.t | nil,
    :metadata => [MicrosoftGraph.Model.MicrosoftGraphObjectMappingMetadataInner.t] | nil,
    :name => String.t | nil,
    :scope => MicrosoftGraph.Model.MicrosoftGraphObjectMappingScope.t | nil,
    :sourceObjectName => String.t | nil,
    :targetObjectName => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:attributeMappings, :list, MicrosoftGraph.Model.MicrosoftGraphObjectMappingAttributeMappingsInner)
     |> Deserializer.deserialize(:flowTypes, :struct, MicrosoftGraph.Model.MicrosoftGraphObjectFlowTypes)
     |> Deserializer.deserialize(:metadata, :list, MicrosoftGraph.Model.MicrosoftGraphObjectMappingMetadataInner)
     |> Deserializer.deserialize(:scope, :struct, MicrosoftGraph.Model.MicrosoftGraphObjectMappingScope)
  end
end
