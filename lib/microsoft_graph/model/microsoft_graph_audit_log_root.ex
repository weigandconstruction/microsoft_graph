# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAuditLogRoot do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :directoryAudits,
    :provisioning,
    :signIns
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :directoryAudits => [MicrosoftGraph.Model.MicrosoftGraphDirectoryAudit.t] | nil,
    :provisioning => [MicrosoftGraph.Model.MicrosoftGraphProvisioningObjectSummary.t] | nil,
    :signIns => [MicrosoftGraph.Model.MicrosoftGraphSignIn.t] | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:directoryAudits, :list, MicrosoftGraph.Model.MicrosoftGraphDirectoryAudit)
     |> Deserializer.deserialize(:provisioning, :list, MicrosoftGraph.Model.MicrosoftGraphProvisioningObjectSummary)
     |> Deserializer.deserialize(:signIns, :list, MicrosoftGraph.Model.MicrosoftGraphSignIn)
  end
end
