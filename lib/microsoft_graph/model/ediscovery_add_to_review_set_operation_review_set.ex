# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.EdiscoveryAddToReviewSetOperationReviewSet do
  @moduledoc """
  eDiscovery review set to which items matching source collection query gets added.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :createdBy,
    :createdDateTime,
    :displayName,
    :queries
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :createdBy => MicrosoftGraph.Model.CaseLastModifiedBy.t | nil,
    :createdDateTime => DateTime.t | nil,
    :displayName => String.t | nil,
    :queries => [MicrosoftGraph.Model.MicrosoftGraphSecurityEdiscoveryReviewSetQuery.t] | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:createdBy, :struct, MicrosoftGraph.Model.CaseLastModifiedBy)
     |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
     |> Deserializer.deserialize(:queries, :list, MicrosoftGraph.Model.MicrosoftGraphSecurityEdiscoveryReviewSetQuery)
  end
end
