# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.PrintPrintersCreateRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :certificateSigningRequest,
    :connectorId,
    :displayName,
    :hasPhysicalDevice,
    :manufacturer,
    :model,
    :physicalDeviceId
  ]

  @type t :: %__MODULE__{
          :certificateSigningRequest =>
            MicrosoftGraph.Model.MicrosoftGraphPrintCertificateSigningRequest.t() | nil,
          :connectorId => String.t() | nil,
          :displayName => String.t() | nil,
          :hasPhysicalDevice => boolean() | nil,
          :manufacturer => String.t() | nil,
          :model => String.t() | nil,
          :physicalDeviceId => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :certificateSigningRequest,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphPrintCertificateSigningRequest
    )
  end
end
