# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.UsersUserEventsEventInstancesEventAttachmentsCreateUploadSessionRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :AttachmentItem
  ]

  @type t :: %__MODULE__{
          :AttachmentItem => MicrosoftGraph.Model.MicrosoftGraphAttachmentItem.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :AttachmentItem,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphAttachmentItem
    )
  end
end
