# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphPrintCertificateSigningRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :content,
    :transportKey
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :content => String.t() | nil,
          :transportKey => String.t() | nil
        }

  def decode(value) do
    value
  end
end
