# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.OnPremisesDirectorySynchronizationConfiguration do
  @moduledoc """
  Consists of configurations that can be fine-tuned and impact the on-premises directory synchronization process for a tenant.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :accidentalDeletionPrevention
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :accidentalDeletionPrevention => MicrosoftGraph.Model.MicrosoftGraphOnPremisesDirectorySynchronizationConfigurationAccidentalDeletionPrevention.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:accidentalDeletionPrevention, :struct, MicrosoftGraph.Model.MicrosoftGraphOnPremisesDirectorySynchronizationConfigurationAccidentalDeletionPrevention)
  end
end
