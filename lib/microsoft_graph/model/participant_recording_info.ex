# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.ParticipantRecordingInfo do
  @moduledoc """
  Information about whether the participant has recording capability.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :initiator,
    :recordingStatus
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :initiator => MicrosoftGraph.Model.MicrosoftGraphRecordingInfoInitiator.t | nil,
    :recordingStatus => MicrosoftGraph.Model.MicrosoftGraphRecordingStatus.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:initiator, :struct, MicrosoftGraph.Model.MicrosoftGraphRecordingInfoInitiator)
     |> Deserializer.deserialize(:recordingStatus, :struct, MicrosoftGraph.Model.MicrosoftGraphRecordingStatus)
  end
end
