# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.UsersUserTodoListsTodoTaskListTasksTodoTaskAttachmentsCreateUploadSessionRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :attachmentInfo
  ]

  @type t :: %__MODULE__{
    :attachmentInfo => MicrosoftGraph.Model.MicrosoftGraphAttachmentInfo.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:attachmentInfo, :struct, MicrosoftGraph.Model.MicrosoftGraphAttachmentInfo)
  end
end
