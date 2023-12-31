# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.CommunicationsCallsCallRejectRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :callbackUri,
    :reason
  ]

  @type t :: %__MODULE__{
          :callbackUri => String.t() | nil,
          :reason => MicrosoftGraph.Model.CommunicationsCallsCallRejectRequestReason.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :reason,
      :struct,
      MicrosoftGraph.Model.CommunicationsCallsCallRejectRequestReason
    )
  end
end
