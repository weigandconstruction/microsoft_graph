# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.AlertCloudAppStatesInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :destinationServiceIp,
    :destinationServiceName,
    :riskScore
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :destinationServiceIp => String.t() | nil,
          :destinationServiceName => String.t() | nil,
          :riskScore => String.t() | nil
        }

  def decode(value) do
    value
  end
end
