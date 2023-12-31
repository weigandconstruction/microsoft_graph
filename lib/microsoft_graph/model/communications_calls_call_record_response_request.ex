# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.CommunicationsCallsCallRecordResponseRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :bargeInAllowed,
    :clientContext,
    :initialSilenceTimeoutInSeconds,
    :maxRecordDurationInSeconds,
    :maxSilenceTimeoutInSeconds,
    :playBeep,
    :prompts,
    :stopTones
  ]

  @type t :: %__MODULE__{
          :bargeInAllowed => boolean() | nil,
          :clientContext => String.t() | nil,
          :initialSilenceTimeoutInSeconds => integer() | nil,
          :maxRecordDurationInSeconds => integer() | nil,
          :maxSilenceTimeoutInSeconds => integer() | nil,
          :playBeep => boolean() | nil,
          :prompts =>
            [MicrosoftGraph.Model.CommunicationsCallsCallRecordResponseRequestPromptsInner.t()]
            | nil,
          :stopTones => [String.t()] | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :prompts,
      :list,
      MicrosoftGraph.Model.CommunicationsCallsCallRecordResponseRequestPromptsInner
    )
  end
end
