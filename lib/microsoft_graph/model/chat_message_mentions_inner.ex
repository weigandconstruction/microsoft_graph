# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.ChatMessageMentionsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :mentionText,
    :mentioned
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => integer() | nil,
    :mentionText => String.t | nil,
    :mentioned => MicrosoftGraph.Model.MicrosoftGraphChatMessageMentionMentioned.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:mentioned, :struct, MicrosoftGraph.Model.MicrosoftGraphChatMessageMentionMentioned)
  end
end
