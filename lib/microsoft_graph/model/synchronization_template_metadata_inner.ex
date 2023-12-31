# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.SynchronizationTemplateMetadataInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :key,
    :value
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :key => MicrosoftGraph.Model.MicrosoftGraphSynchronizationMetadataEntryKey.t() | nil,
          :value => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :key,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphSynchronizationMetadataEntryKey
    )
  end
end
