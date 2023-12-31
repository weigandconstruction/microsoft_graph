# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSecureScore do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :activeUserCount,
    :averageComparativeScores,
    :azureTenantId,
    :controlScores,
    :createdDateTime,
    :currentScore,
    :enabledServices,
    :licensedUserCount,
    :maxScore,
    :vendorInformation
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :activeUserCount => integer() | nil,
          :averageComparativeScores =>
            [MicrosoftGraph.Model.SecureScoreAverageComparativeScoresInner.t()] | nil,
          :azureTenantId => String.t() | nil,
          :controlScores => [MicrosoftGraph.Model.SecureScoreControlScoresInner.t()] | nil,
          :createdDateTime => DateTime.t() | nil,
          :currentScore => MicrosoftGraph.Model.SecureScoreCurrentScore.t() | nil,
          :enabledServices => [String.t()] | nil,
          :licensedUserCount => integer() | nil,
          :maxScore => MicrosoftGraph.Model.SecureScoreMaxScore.t() | nil,
          :vendorInformation => MicrosoftGraph.Model.SecureScoreVendorInformation.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :averageComparativeScores,
      :list,
      MicrosoftGraph.Model.SecureScoreAverageComparativeScoresInner
    )
    |> Deserializer.deserialize(
      :controlScores,
      :list,
      MicrosoftGraph.Model.SecureScoreControlScoresInner
    )
    |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :currentScore,
      :struct,
      MicrosoftGraph.Model.SecureScoreCurrentScore
    )
    |> Deserializer.deserialize(:maxScore, :struct, MicrosoftGraph.Model.SecureScoreMaxScore)
    |> Deserializer.deserialize(
      :vendorInformation,
      :struct,
      MicrosoftGraph.Model.SecureScoreVendorInformation
    )
  end
end
