# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphUnifiedRoleAssignment do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :appScope,
    :appScopeId,
    :condition,
    :directoryScope,
    :directoryScopeId,
    :principal,
    :principalId,
    :roleDefinition,
    :roleDefinitionId
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :appScope => MicrosoftGraph.Model.UnifiedRoleAssignmentAppScope.t | nil,
    :appScopeId => String.t | nil,
    :condition => String.t | nil,
    :directoryScope => MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestDirectoryScope.t | nil,
    :directoryScopeId => String.t | nil,
    :principal => MicrosoftGraph.Model.UnifiedRoleAssignmentPrincipal.t | nil,
    :principalId => String.t | nil,
    :roleDefinition => MicrosoftGraph.Model.UnifiedRoleAssignmentRoleDefinition.t | nil,
    :roleDefinitionId => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:appScope, :struct, MicrosoftGraph.Model.UnifiedRoleAssignmentAppScope)
     |> Deserializer.deserialize(:directoryScope, :struct, MicrosoftGraph.Model.UnifiedRoleAssignmentScheduleRequestDirectoryScope)
     |> Deserializer.deserialize(:principal, :struct, MicrosoftGraph.Model.UnifiedRoleAssignmentPrincipal)
     |> Deserializer.deserialize(:roleDefinition, :struct, MicrosoftGraph.Model.UnifiedRoleAssignmentRoleDefinition)
  end
end
