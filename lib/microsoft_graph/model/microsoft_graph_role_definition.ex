# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphRoleDefinition do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :description,
    :displayName,
    :isBuiltIn,
    :roleAssignments,
    :rolePermissions
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :isBuiltIn => boolean() | nil,
          :roleAssignments => [MicrosoftGraph.Model.MicrosoftGraphRoleAssignment.t()] | nil,
          :rolePermissions =>
            [
              MicrosoftGraph.Model.DeviceManagementGetEffectivePermissions2XxResponseAllOfValueInner.t()
            ]
            | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :roleAssignments,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphRoleAssignment
    )
    |> Deserializer.deserialize(
      :rolePermissions,
      :list,
      MicrosoftGraph.Model.DeviceManagementGetEffectivePermissions2XxResponseAllOfValueInner
    )
  end
end
