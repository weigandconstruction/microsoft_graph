# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.ChatMessageInfoBody do
  @moduledoc """
  Body of the chatMessage. This will still contain markers for @mentions and attachments even though the object doesn't return @mentions and attachments.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :content,
    :contentType
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :content => String.t | nil,
    :contentType => MicrosoftGraph.Model.MicrosoftGraphItemBodyContentType.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:contentType, :struct, MicrosoftGraph.Model.MicrosoftGraphItemBodyContentType)
  end
end
