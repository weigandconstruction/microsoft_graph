# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.CommunicationsCallsLogTeleconferenceDeviceQualityRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :quality
  ]

  @type t :: %__MODULE__{
          :quality => MicrosoftGraph.Model.MicrosoftGraphTeleconferenceDeviceQuality.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :quality,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphTeleconferenceDeviceQuality
    )
  end
end
