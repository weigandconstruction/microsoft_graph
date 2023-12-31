# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.OnlineMeetingBroadcastSettings do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :allowedAudience,
    :captions,
    :isAttendeeReportEnabled,
    :isQuestionAndAnswerEnabled,
    :isRecordingEnabled,
    :isVideoOnDemandEnabled
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :allowedAudience =>
            MicrosoftGraph.Model.MicrosoftGraphBroadcastMeetingSettingsAllowedAudience.t() | nil,
          :captions =>
            MicrosoftGraph.Model.MicrosoftGraphBroadcastMeetingSettingsCaptions.t() | nil,
          :isAttendeeReportEnabled => boolean() | nil,
          :isQuestionAndAnswerEnabled => boolean() | nil,
          :isRecordingEnabled => boolean() | nil,
          :isVideoOnDemandEnabled => boolean() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :allowedAudience,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphBroadcastMeetingSettingsAllowedAudience
    )
    |> Deserializer.deserialize(
      :captions,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphBroadcastMeetingSettingsCaptions
    )
  end
end
