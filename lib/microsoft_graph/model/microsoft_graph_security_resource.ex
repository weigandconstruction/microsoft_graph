# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSecurityResource do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :resource,
    :resourceType
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :resource => String.t() | nil,
          :resourceType =>
            MicrosoftGraph.Model.MicrosoftGraphSecurityResourceResourceType.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :resourceType,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphSecurityResourceResourceType
    )
  end
end
