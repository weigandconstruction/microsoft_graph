# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphChangeNotification do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :changeType,
    :clientState,
    :encryptedContent,
    :id,
    :lifecycleEvent,
    :resource,
    :resourceData,
    :subscriptionExpirationDateTime,
    :subscriptionId,
    :tenantId
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :changeType => MicrosoftGraph.Model.MicrosoftGraphChangeType.t | nil,
    :clientState => String.t | nil,
    :encryptedContent => MicrosoftGraph.Model.MicrosoftGraphChangeNotificationEncryptedContent.t | nil,
    :id => String.t | nil,
    :lifecycleEvent => MicrosoftGraph.Model.MicrosoftGraphChangeNotificationLifecycleEvent.t | nil,
    :resource => String.t | nil,
    :resourceData => MicrosoftGraph.Model.MicrosoftGraphChangeNotificationResourceData.t | nil,
    :subscriptionExpirationDateTime => DateTime.t | nil,
    :subscriptionId => String.t | nil,
    :tenantId => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:changeType, :struct, MicrosoftGraph.Model.MicrosoftGraphChangeType)
     |> Deserializer.deserialize(:encryptedContent, :struct, MicrosoftGraph.Model.MicrosoftGraphChangeNotificationEncryptedContent)
     |> Deserializer.deserialize(:lifecycleEvent, :struct, MicrosoftGraph.Model.MicrosoftGraphChangeNotificationLifecycleEvent)
     |> Deserializer.deserialize(:resourceData, :struct, MicrosoftGraph.Model.MicrosoftGraphChangeNotificationResourceData)
     |> Deserializer.deserialize(:subscriptionExpirationDateTime, :datetime, nil)
  end
end
