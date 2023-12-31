# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphTeamsAppPermissionSet do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :resourceSpecificPermissions
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :resourceSpecificPermissions =>
            [
              MicrosoftGraph.Model.MicrosoftGraphTeamsAppPermissionSetResourceSpecificPermissionsInner.t()
            ]
            | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :resourceSpecificPermissions,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphTeamsAppPermissionSetResourceSpecificPermissionsInner
    )
  end
end
