# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSecurityAlertEvidence do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :createdDateTime,
    :detailedRoles,
    :remediationStatus,
    :remediationStatusDetails,
    :roles,
    :tags,
    :verdict
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :createdDateTime => DateTime.t() | nil,
          :detailedRoles => [String.t()] | nil,
          :remediationStatus =>
            MicrosoftGraph.Model.MicrosoftGraphSecurityEvidenceRemediationStatus.t() | nil,
          :remediationStatusDetails => String.t() | nil,
          :roles => [MicrosoftGraph.Model.MicrosoftGraphSecurityEvidenceRole.t()] | nil,
          :tags => [String.t()] | nil,
          :verdict => MicrosoftGraph.Model.MicrosoftGraphSecurityEvidenceVerdict.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :remediationStatus,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphSecurityEvidenceRemediationStatus
    )
    |> Deserializer.deserialize(
      :roles,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphSecurityEvidenceRole
    )
    |> Deserializer.deserialize(
      :verdict,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphSecurityEvidenceVerdict
    )
  end
end
