# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.CommunicationsCallsCallAnswerRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :acceptedModalities,
    :callOptions,
    :callbackUri,
    :mediaConfig,
    :participantCapacity
  ]

  @type t :: %__MODULE__{
    :acceptedModalities => [MicrosoftGraph.Model.CommunicationsCallsCallAnswerRequestAcceptedModalitiesInner.t] | nil,
    :callOptions => MicrosoftGraph.Model.CommunicationsCallsCallAnswerRequestCallOptions.t | nil,
    :callbackUri => String.t | nil,
    :mediaConfig => MicrosoftGraph.Model.MicrosoftGraphMediaConfig.t | nil,
    :participantCapacity => integer() | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:acceptedModalities, :list, MicrosoftGraph.Model.CommunicationsCallsCallAnswerRequestAcceptedModalitiesInner)
     |> Deserializer.deserialize(:callOptions, :struct, MicrosoftGraph.Model.CommunicationsCallsCallAnswerRequestCallOptions)
     |> Deserializer.deserialize(:mediaConfig, :struct, MicrosoftGraph.Model.MicrosoftGraphMediaConfig)
  end
end
