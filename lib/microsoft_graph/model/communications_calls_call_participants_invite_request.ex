# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.CommunicationsCallsCallParticipantsInviteRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :clientContext,
    :participants
  ]

  @type t :: %__MODULE__{
    :clientContext => String.t | nil,
    :participants => [MicrosoftGraph.Model.MicrosoftGraphInvitationParticipantInfo.t] | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:participants, :list, MicrosoftGraph.Model.MicrosoftGraphInvitationParticipantInfo)
  end
end
