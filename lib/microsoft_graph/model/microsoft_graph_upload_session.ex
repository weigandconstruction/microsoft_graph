# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphUploadSession do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :expirationDateTime,
    :nextExpectedRanges,
    :uploadUrl
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :expirationDateTime => DateTime.t | nil,
    :nextExpectedRanges => [String.t] | nil,
    :uploadUrl => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:expirationDateTime, :datetime, nil)
  end
end
