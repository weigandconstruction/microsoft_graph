# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphComplianceInformation do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :certificationControls,
    :certificationName
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :certificationControls => [MicrosoftGraph.Model.MicrosoftGraphComplianceInformationCertificationControlsInner.t] | nil,
    :certificationName => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:certificationControls, :list, MicrosoftGraph.Model.MicrosoftGraphComplianceInformationCertificationControlsInner)
  end
end
