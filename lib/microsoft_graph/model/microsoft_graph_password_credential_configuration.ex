# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphPasswordCredentialConfiguration do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :maxLifetime,
    :restrictForAppsCreatedAfterDateTime,
    :restrictionType
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :maxLifetime => String.t() | nil,
          :restrictForAppsCreatedAfterDateTime => DateTime.t() | nil,
          :restrictionType =>
            MicrosoftGraph.Model.MicrosoftGraphPasswordCredentialConfigurationRestrictionType.t()
            | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:restrictForAppsCreatedAfterDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :restrictionType,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphPasswordCredentialConfigurationRestrictionType
    )
  end
end
