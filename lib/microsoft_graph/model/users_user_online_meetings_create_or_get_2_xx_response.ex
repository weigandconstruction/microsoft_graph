# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.UsersUserOnlineMeetingsCreateOrGet2XxResponse do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :allowAttendeeToEnableCamera,
    :allowAttendeeToEnableMic,
    :allowMeetingChat,
    :allowParticipantsToChangeName,
    :allowTeamworkReactions,
    :allowedPresenters,
    :attendanceReports,
    :attendeeReport,
    :audioConferencing,
    :broadcastSettings,
    :chatInfo,
    :creationDateTime,
    :endDateTime,
    :externalId,
    :isBroadcast,
    :isEntryExitAnnounced,
    :joinInformation,
    :joinMeetingIdSettings,
    :joinWebUrl,
    :lobbyBypassSettings,
    :participants,
    :recordAutomatically,
    :shareMeetingChatHistoryDefault,
    :startDateTime,
    :subject,
    :transcripts,
    :videoTeleconferenceId,
    :watermarkProtection
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :allowAttendeeToEnableCamera => boolean() | nil,
          :allowAttendeeToEnableMic => boolean() | nil,
          :allowMeetingChat => MicrosoftGraph.Model.OnlineMeetingAllowMeetingChat.t() | nil,
          :allowParticipantsToChangeName => boolean() | nil,
          :allowTeamworkReactions => boolean() | nil,
          :allowedPresenters => MicrosoftGraph.Model.OnlineMeetingAllowedPresenters.t() | nil,
          :attendanceReports =>
            [MicrosoftGraph.Model.MicrosoftGraphMeetingAttendanceReport.t()] | nil,
          :attendeeReport => String.t() | nil,
          :audioConferencing => MicrosoftGraph.Model.OnlineMeetingAudioConferencing.t() | nil,
          :broadcastSettings => MicrosoftGraph.Model.OnlineMeetingBroadcastSettings.t() | nil,
          :chatInfo => MicrosoftGraph.Model.OnlineMeetingChatInfo.t() | nil,
          :creationDateTime => DateTime.t() | nil,
          :endDateTime => DateTime.t() | nil,
          :externalId => String.t() | nil,
          :isBroadcast => boolean() | nil,
          :isEntryExitAnnounced => boolean() | nil,
          :joinInformation => MicrosoftGraph.Model.OnlineMeetingJoinInformation.t() | nil,
          :joinMeetingIdSettings =>
            MicrosoftGraph.Model.OnlineMeetingJoinMeetingIdSettings.t() | nil,
          :joinWebUrl => String.t() | nil,
          :lobbyBypassSettings => MicrosoftGraph.Model.OnlineMeetingLobbyBypassSettings.t() | nil,
          :participants => MicrosoftGraph.Model.OnlineMeetingParticipants.t() | nil,
          :recordAutomatically => boolean() | nil,
          :shareMeetingChatHistoryDefault =>
            MicrosoftGraph.Model.OnlineMeetingShareMeetingChatHistoryDefault.t() | nil,
          :startDateTime => DateTime.t() | nil,
          :subject => String.t() | nil,
          :transcripts => [MicrosoftGraph.Model.MicrosoftGraphCallTranscript.t()] | nil,
          :videoTeleconferenceId => String.t() | nil,
          :watermarkProtection => MicrosoftGraph.Model.OnlineMeetingWatermarkProtection.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :allowMeetingChat,
      :struct,
      MicrosoftGraph.Model.OnlineMeetingAllowMeetingChat
    )
    |> Deserializer.deserialize(
      :allowedPresenters,
      :struct,
      MicrosoftGraph.Model.OnlineMeetingAllowedPresenters
    )
    |> Deserializer.deserialize(
      :attendanceReports,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphMeetingAttendanceReport
    )
    |> Deserializer.deserialize(
      :audioConferencing,
      :struct,
      MicrosoftGraph.Model.OnlineMeetingAudioConferencing
    )
    |> Deserializer.deserialize(
      :broadcastSettings,
      :struct,
      MicrosoftGraph.Model.OnlineMeetingBroadcastSettings
    )
    |> Deserializer.deserialize(:chatInfo, :struct, MicrosoftGraph.Model.OnlineMeetingChatInfo)
    |> Deserializer.deserialize(:creationDateTime, :datetime, nil)
    |> Deserializer.deserialize(:endDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :joinInformation,
      :struct,
      MicrosoftGraph.Model.OnlineMeetingJoinInformation
    )
    |> Deserializer.deserialize(
      :joinMeetingIdSettings,
      :struct,
      MicrosoftGraph.Model.OnlineMeetingJoinMeetingIdSettings
    )
    |> Deserializer.deserialize(
      :lobbyBypassSettings,
      :struct,
      MicrosoftGraph.Model.OnlineMeetingLobbyBypassSettings
    )
    |> Deserializer.deserialize(
      :participants,
      :struct,
      MicrosoftGraph.Model.OnlineMeetingParticipants
    )
    |> Deserializer.deserialize(
      :shareMeetingChatHistoryDefault,
      :struct,
      MicrosoftGraph.Model.OnlineMeetingShareMeetingChatHistoryDefault
    )
    |> Deserializer.deserialize(:startDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :transcripts,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphCallTranscript
    )
    |> Deserializer.deserialize(
      :watermarkProtection,
      :struct,
      MicrosoftGraph.Model.OnlineMeetingWatermarkProtection
    )
  end
end
