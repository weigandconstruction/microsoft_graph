# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphOnPremisesDirectorySynchronizationConfigurationAccidentalDeletionPrevention do
  @moduledoc """
  Contains the accidental deletion prevention configuration for a tenant.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :alertThreshold,
    :synchronizationPreventionType
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :alertThreshold => integer() | nil,
    :synchronizationPreventionType => MicrosoftGraph.Model.MicrosoftGraphOnPremisesAccidentalDeletionPreventionSynchronizationPreventionType.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:synchronizationPreventionType, :struct, MicrosoftGraph.Model.MicrosoftGraphOnPremisesAccidentalDeletionPreventionSynchronizationPreventionType)
  end
end
