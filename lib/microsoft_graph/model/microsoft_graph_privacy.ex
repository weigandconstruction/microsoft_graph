# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphPrivacy do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :subjectRightsRequests
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :subjectRightsRequests => [MicrosoftGraph.Model.MicrosoftGraphSubjectRightsRequest.t] | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:subjectRightsRequests, :list, MicrosoftGraph.Model.MicrosoftGraphSubjectRightsRequest)
  end
end
