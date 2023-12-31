# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.KubernetesPodEvidenceContainersInner do
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
    :verdict,
    :args,
    :command,
    :containerId,
    :image,
    :isPrivileged,
    :name,
    :pod
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
          :verdict => MicrosoftGraph.Model.MicrosoftGraphSecurityEvidenceVerdict.t() | nil,
          :args => [String.t()] | nil,
          :command => [String.t()] | nil,
          :containerId => String.t() | nil,
          :image => MicrosoftGraph.Model.ContainerEvidenceImage.t() | nil,
          :isPrivileged => boolean() | nil,
          :name => String.t() | nil,
          :pod => MicrosoftGraph.Model.ContainerEvidencePod.t() | nil
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
    |> Deserializer.deserialize(:image, :struct, MicrosoftGraph.Model.ContainerEvidenceImage)
    |> Deserializer.deserialize(:pod, :struct, MicrosoftGraph.Model.ContainerEvidencePod)
  end
end
