# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.CommunicationsCallRecordsGetDirectRoutingCalls2XxResponseAllOfValueInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :callEndSubReason,
    :callType,
    :calleeNumber,
    :callerNumber,
    :correlationId,
    :duration,
    :endDateTime,
    :failureDateTime,
    :finalSipCode,
    :finalSipCodePhrase,
    :id,
    :inviteDateTime,
    :mediaBypassEnabled,
    :mediaPathLocation,
    :signalingLocation,
    :startDateTime,
    :successfulCall,
    :trunkFullyQualifiedDomainName,
    :userDisplayName,
    :userId,
    :userPrincipalName
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :callEndSubReason => integer() | nil,
          :callType => String.t() | nil,
          :calleeNumber => String.t() | nil,
          :callerNumber => String.t() | nil,
          :correlationId => String.t() | nil,
          :duration => integer() | nil,
          :endDateTime => DateTime.t() | nil,
          :failureDateTime => DateTime.t() | nil,
          :finalSipCode => integer() | nil,
          :finalSipCodePhrase => String.t() | nil,
          :id => String.t() | nil,
          :inviteDateTime => DateTime.t() | nil,
          :mediaBypassEnabled => boolean() | nil,
          :mediaPathLocation => String.t() | nil,
          :signalingLocation => String.t() | nil,
          :startDateTime => DateTime.t() | nil,
          :successfulCall => boolean() | nil,
          :trunkFullyQualifiedDomainName => String.t() | nil,
          :userDisplayName => String.t() | nil,
          :userId => String.t() | nil,
          :userPrincipalName => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:endDateTime, :datetime, nil)
    |> Deserializer.deserialize(:failureDateTime, :datetime, nil)
    |> Deserializer.deserialize(:inviteDateTime, :datetime, nil)
    |> Deserializer.deserialize(:startDateTime, :datetime, nil)
  end
end
