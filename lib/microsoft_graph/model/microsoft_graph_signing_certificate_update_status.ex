# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSigningCertificateUpdateStatus do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :certificateUpdateResult,
    :lastRunDateTime
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :certificateUpdateResult => String.t | nil,
    :lastRunDateTime => DateTime.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:lastRunDateTime, :datetime, nil)
  end
end
