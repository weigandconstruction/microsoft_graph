# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsAppHealthDeviceModelPerformance do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :activeDeviceCount,
    :deviceManufacturer,
    :deviceModel,
    :healthStatus,
    :meanTimeToFailureInMinutes,
    :modelAppHealthScore
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :activeDeviceCount => integer() | nil,
    :deviceManufacturer => String.t | nil,
    :deviceModel => String.t | nil,
    :healthStatus => MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsHealthState.t | nil,
    :meanTimeToFailureInMinutes => integer() | nil,
    :modelAppHealthScore => MicrosoftGraph.Model.UserExperienceAnalyticsAppHealthDeviceModelPerformanceModelAppHealthScore.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:healthStatus, :struct, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsHealthState)
     |> Deserializer.deserialize(:modelAppHealthScore, :struct, MicrosoftGraph.Model.UserExperienceAnalyticsAppHealthDeviceModelPerformanceModelAppHealthScore)
  end
end
