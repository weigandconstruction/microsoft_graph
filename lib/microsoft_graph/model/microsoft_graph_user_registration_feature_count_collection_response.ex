# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphUserRegistrationFeatureCountCollectionResponse do
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
          :value => [MicrosoftGraph.Model.MicrosoftGraphUserRegistrationFeatureCount.t()] | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :value,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphUserRegistrationFeatureCount
    )
  end
end
