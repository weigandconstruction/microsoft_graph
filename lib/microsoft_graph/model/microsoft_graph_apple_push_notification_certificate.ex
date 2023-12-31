# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphApplePushNotificationCertificate do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :appleIdentifier,
    :certificate,
    :certificateSerialNumber,
    :certificateUploadFailureReason,
    :certificateUploadStatus,
    :expirationDateTime,
    :lastModifiedDateTime,
    :topicIdentifier
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :appleIdentifier => String.t() | nil,
          :certificate => String.t() | nil,
          :certificateSerialNumber => String.t() | nil,
          :certificateUploadFailureReason => String.t() | nil,
          :certificateUploadStatus => String.t() | nil,
          :expirationDateTime => DateTime.t() | nil,
          :lastModifiedDateTime => DateTime.t() | nil,
          :topicIdentifier => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:expirationDateTime, :datetime, nil)
    |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
  end
end
