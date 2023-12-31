# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsDeviceStartupProcessPerformance do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :deviceCount,
    :medianImpactInMs,
    :processName,
    :productName,
    :publisher,
    :totalImpactInMs
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :deviceCount => integer() | nil,
          :medianImpactInMs => integer() | nil,
          :processName => String.t() | nil,
          :productName => String.t() | nil,
          :publisher => String.t() | nil,
          :totalImpactInMs => integer() | nil
        }

  def decode(value) do
    value
  end
end
