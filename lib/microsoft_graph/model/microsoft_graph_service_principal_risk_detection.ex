# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphServicePrincipalRiskDetection do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :activity,
    :activityDateTime,
    :additionalInfo,
    :appId,
    :correlationId,
    :detectedDateTime,
    :detectionTimingType,
    :ipAddress,
    :keyIds,
    :lastUpdatedDateTime,
    :location,
    :requestId,
    :riskDetail,
    :riskEventType,
    :riskLevel,
    :riskState,
    :servicePrincipalDisplayName,
    :servicePrincipalId,
    :source,
    :tokenIssuerType
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :activity => MicrosoftGraph.Model.ServicePrincipalRiskDetectionActivity.t | nil,
    :activityDateTime => DateTime.t | nil,
    :additionalInfo => String.t | nil,
    :appId => String.t | nil,
    :correlationId => String.t | nil,
    :detectedDateTime => DateTime.t | nil,
    :detectionTimingType => MicrosoftGraph.Model.ServicePrincipalRiskDetectionDetectionTimingType.t | nil,
    :ipAddress => String.t | nil,
    :keyIds => [String.t] | nil,
    :lastUpdatedDateTime => DateTime.t | nil,
    :location => MicrosoftGraph.Model.ServicePrincipalRiskDetectionLocation.t | nil,
    :requestId => String.t | nil,
    :riskDetail => MicrosoftGraph.Model.ServicePrincipalRiskDetectionRiskDetail.t | nil,
    :riskEventType => String.t | nil,
    :riskLevel => MicrosoftGraph.Model.ServicePrincipalRiskDetectionRiskLevel.t | nil,
    :riskState => MicrosoftGraph.Model.ServicePrincipalRiskDetectionRiskState.t | nil,
    :servicePrincipalDisplayName => String.t | nil,
    :servicePrincipalId => String.t | nil,
    :source => String.t | nil,
    :tokenIssuerType => MicrosoftGraph.Model.ServicePrincipalRiskDetectionTokenIssuerType.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:activity, :struct, MicrosoftGraph.Model.ServicePrincipalRiskDetectionActivity)
     |> Deserializer.deserialize(:activityDateTime, :datetime, nil)
     |> Deserializer.deserialize(:detectedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:detectionTimingType, :struct, MicrosoftGraph.Model.ServicePrincipalRiskDetectionDetectionTimingType)
     |> Deserializer.deserialize(:lastUpdatedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:location, :struct, MicrosoftGraph.Model.ServicePrincipalRiskDetectionLocation)
     |> Deserializer.deserialize(:riskDetail, :struct, MicrosoftGraph.Model.ServicePrincipalRiskDetectionRiskDetail)
     |> Deserializer.deserialize(:riskLevel, :struct, MicrosoftGraph.Model.ServicePrincipalRiskDetectionRiskLevel)
     |> Deserializer.deserialize(:riskState, :struct, MicrosoftGraph.Model.ServicePrincipalRiskDetectionRiskState)
     |> Deserializer.deserialize(:tokenIssuerType, :struct, MicrosoftGraph.Model.ServicePrincipalRiskDetectionTokenIssuerType)
  end
end
