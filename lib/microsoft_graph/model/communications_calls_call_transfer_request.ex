# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.CommunicationsCallsCallTransferRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :transferTarget,
    :transferee
  ]

  @type t :: %__MODULE__{
    :transferTarget => MicrosoftGraph.Model.MicrosoftGraphInvitationParticipantInfo.t | nil,
    :transferee => MicrosoftGraph.Model.CommunicationsCallsCallTransferRequestTransferee.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:transferTarget, :struct, MicrosoftGraph.Model.MicrosoftGraphInvitationParticipantInfo)
     |> Deserializer.deserialize(:transferee, :struct, MicrosoftGraph.Model.CommunicationsCallsCallTransferRequestTransferee)
  end
end
