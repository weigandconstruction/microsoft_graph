# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphUserTrainingEventInfoTrainingCompletedProperties do
  @moduledoc """
  Event details of the training when it was completed by the user.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :browser,
    :contentDateTime,
    :ipAddress,
    :osPlatformDeviceDetails,
    :potentialScoreImpact
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :browser => String.t | nil,
    :contentDateTime => DateTime.t | nil,
    :ipAddress => String.t | nil,
    :osPlatformDeviceDetails => String.t | nil,
    :potentialScoreImpact => MicrosoftGraph.Model.MicrosoftGraphUserTrainingContentEventInfoPotentialScoreImpact.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:contentDateTime, :datetime, nil)
     |> Deserializer.deserialize(:potentialScoreImpact, :struct, MicrosoftGraph.Model.MicrosoftGraphUserTrainingContentEventInfoPotentialScoreImpact)
  end
end
