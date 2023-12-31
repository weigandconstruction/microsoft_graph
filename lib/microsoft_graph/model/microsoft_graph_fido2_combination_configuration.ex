# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphFido2CombinationConfiguration do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :appliesToCombinations,
    :allowedAAGUIDs
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :appliesToCombinations =>
            [MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodModes.t()] | nil,
          :allowedAAGUIDs => [String.t()] | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :appliesToCombinations,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodModes
    )
  end
end
