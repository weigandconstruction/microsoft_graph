# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsWorkFromAnywhereMetric do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :metricDevices
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :metricDevices => [MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsWorkFromAnywhereDevice.t] | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:metricDevices, :list, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsWorkFromAnywhereDevice)
  end
end
