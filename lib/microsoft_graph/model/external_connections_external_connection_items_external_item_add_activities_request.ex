# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.ExternalConnectionsExternalConnectionItemsExternalItemAddActivitiesRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :activities
  ]

  @type t :: %__MODULE__{
    :activities => [MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalActivity.t] | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:activities, :list, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalActivity)
  end
end
