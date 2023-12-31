# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphManagedAppConfigurationCollectionResponse do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.count",
    :"@odata.nextLink",
    :value
  ]

  @type t :: %__MODULE__{
          :"@odata.count" => integer() | nil,
          :"@odata.nextLink" => String.t() | nil,
          :value => [MicrosoftGraph.Model.MicrosoftGraphManagedAppConfiguration.t()] | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :value,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphManagedAppConfiguration
    )
  end
end
