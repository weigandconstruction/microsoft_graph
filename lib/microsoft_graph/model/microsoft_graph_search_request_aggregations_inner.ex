# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSearchRequestAggregationsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :bucketDefinition,
    :field,
    :size
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :bucketDefinition => MicrosoftGraph.Model.MicrosoftGraphBucketAggregationDefinition.t | nil,
    :field => String.t | nil,
    :size => integer() | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:bucketDefinition, :struct, MicrosoftGraph.Model.MicrosoftGraphBucketAggregationDefinition)
  end
end
