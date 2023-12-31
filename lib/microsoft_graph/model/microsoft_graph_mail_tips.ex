# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphMailTips do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :automaticReplies,
    :customMailTip,
    :deliveryRestricted,
    :emailAddress,
    :error,
    :externalMemberCount,
    :isModerated,
    :mailboxFull,
    :maxMessageSize,
    :recipientScope,
    :recipientSuggestions,
    :totalMemberCount
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :automaticReplies =>
            MicrosoftGraph.Model.MicrosoftGraphMailTipsAutomaticReplies.t() | nil,
          :customMailTip => String.t() | nil,
          :deliveryRestricted => boolean() | nil,
          :emailAddress => MicrosoftGraph.Model.MicrosoftGraphMailTipsEmailAddress.t() | nil,
          :error => MicrosoftGraph.Model.MicrosoftGraphMailTipsError.t() | nil,
          :externalMemberCount => integer() | nil,
          :isModerated => boolean() | nil,
          :mailboxFull => boolean() | nil,
          :maxMessageSize => integer() | nil,
          :recipientScope => MicrosoftGraph.Model.MicrosoftGraphMailTipsRecipientScope.t() | nil,
          :recipientSuggestions =>
            [
              MicrosoftGraph.Model.MeCalendarGroupsCalendarGroupCalendarsCalendarCalendarViewEventInstancesEventForwardRequestToRecipientsInner.t()
            ]
            | nil,
          :totalMemberCount => integer() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :automaticReplies,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphMailTipsAutomaticReplies
    )
    |> Deserializer.deserialize(
      :emailAddress,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphMailTipsEmailAddress
    )
    |> Deserializer.deserialize(:error, :struct, MicrosoftGraph.Model.MicrosoftGraphMailTipsError)
    |> Deserializer.deserialize(
      :recipientScope,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphMailTipsRecipientScope
    )
    |> Deserializer.deserialize(
      :recipientSuggestions,
      :list,
      MicrosoftGraph.Model.MeCalendarGroupsCalendarGroupCalendarsCalendarCalendarViewEventInstancesEventForwardRequestToRecipientsInner
    )
  end
end
