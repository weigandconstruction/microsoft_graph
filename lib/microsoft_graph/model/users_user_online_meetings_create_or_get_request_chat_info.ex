# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.UsersUserOnlineMeetingsCreateOrGetRequestChatInfo do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :messageId,
    :replyChainMessageId,
    :threadId
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :messageId => String.t | nil,
    :replyChainMessageId => String.t | nil,
    :threadId => String.t | nil
  }

  def decode(value) do
    value
  end
end
