# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSecureScoreControlProfile do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :actionType,
    :actionUrl,
    :azureTenantId,
    :complianceInformation,
    :controlCategory,
    :controlStateUpdates,
    :deprecated,
    :implementationCost,
    :lastModifiedDateTime,
    :maxScore,
    :rank,
    :remediation,
    :remediationImpact,
    :service,
    :threats,
    :tier,
    :title,
    :userImpact,
    :vendorInformation
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :actionType => String.t | nil,
    :actionUrl => String.t | nil,
    :azureTenantId => String.t | nil,
    :complianceInformation => [MicrosoftGraph.Model.SecureScoreControlProfileComplianceInformationInner.t] | nil,
    :controlCategory => String.t | nil,
    :controlStateUpdates => [MicrosoftGraph.Model.SecureScoreControlProfileControlStateUpdatesInner.t] | nil,
    :deprecated => boolean() | nil,
    :implementationCost => String.t | nil,
    :lastModifiedDateTime => DateTime.t | nil,
    :maxScore => MicrosoftGraph.Model.SecureScoreControlProfileMaxScore.t | nil,
    :rank => integer() | nil,
    :remediation => String.t | nil,
    :remediationImpact => String.t | nil,
    :service => String.t | nil,
    :threats => [String.t] | nil,
    :tier => String.t | nil,
    :title => String.t | nil,
    :userImpact => String.t | nil,
    :vendorInformation => MicrosoftGraph.Model.SecureScoreControlProfileVendorInformation.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:complianceInformation, :list, MicrosoftGraph.Model.SecureScoreControlProfileComplianceInformationInner)
     |> Deserializer.deserialize(:controlStateUpdates, :list, MicrosoftGraph.Model.SecureScoreControlProfileControlStateUpdatesInner)
     |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:maxScore, :struct, MicrosoftGraph.Model.SecureScoreControlProfileMaxScore)
     |> Deserializer.deserialize(:vendorInformation, :struct, MicrosoftGraph.Model.SecureScoreControlProfileVendorInformation)
  end
end
