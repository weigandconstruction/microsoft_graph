# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestRoleDefinition do
  @moduledoc """
  Detailed information for the unifiedRoleDefinition object that is referenced through the roleDefinitionId property. Supports $expand.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :description,
    :displayName,
    :inheritsPermissionsFrom,
    :isBuiltIn,
    :isEnabled,
    :resourceScopes,
    :rolePermissions,
    :templateId,
    :version
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :inheritsPermissionsFrom =>
            [MicrosoftGraph.Model.MicrosoftGraphUnifiedRoleDefinition.t()] | nil,
          :isBuiltIn => boolean() | nil,
          :isEnabled => boolean() | nil,
          :resourceScopes => [String.t()] | nil,
          :rolePermissions =>
            [MicrosoftGraph.Model.MicrosoftGraphUnifiedRolePermission.t()] | nil,
          :templateId => String.t() | nil,
          :version => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :inheritsPermissionsFrom,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphUnifiedRoleDefinition
    )
    |> Deserializer.deserialize(
      :rolePermissions,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphUnifiedRolePermission
    )
  end
end
