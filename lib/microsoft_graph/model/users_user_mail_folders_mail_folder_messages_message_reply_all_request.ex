# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.UsersUserMailFoldersMailFolderMessagesMessageReplyAllRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :Comment,
    :Message
  ]

  @type t :: %__MODULE__{
          :Comment => String.t() | nil,
          :Message =>
            MicrosoftGraph.Model.UsersUserMailFoldersMailFolderMessagesMessageReplyAllRequestMessage.t()
            | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :Message,
      :struct,
      MicrosoftGraph.Model.UsersUserMailFoldersMailFolderMessagesMessageReplyAllRequestMessage
    )
  end
end
