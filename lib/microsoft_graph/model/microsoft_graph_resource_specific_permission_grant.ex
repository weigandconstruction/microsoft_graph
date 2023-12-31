# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphResourceSpecificPermissionGrant do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :deletedDateTime,
    :clientAppId,
    :clientId,
    :permission,
    :permissionType,
    :resourceAppId
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :deletedDateTime => DateTime.t() | nil,
          :clientAppId => String.t() | nil,
          :clientId => String.t() | nil,
          :permission => String.t() | nil,
          :permissionType => String.t() | nil,
          :resourceAppId => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:deletedDateTime, :datetime, nil)
  end
end
