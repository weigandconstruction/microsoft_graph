# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphIdentityGovernanceLifecycleWorkflowsContainer do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :customTaskExtensions,
    :deletedItems,
    :settings,
    :taskDefinitions,
    :workflowTemplates,
    :workflows
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :customTaskExtensions => [MicrosoftGraph.Model.MicrosoftGraphIdentityGovernanceCustomTaskExtension.t] | nil,
    :deletedItems => MicrosoftGraph.Model.LifecycleWorkflowsContainerDeletedItems.t | nil,
    :settings => MicrosoftGraph.Model.MicrosoftGraphIdentityGovernanceLifecycleManagementSettings.t | nil,
    :taskDefinitions => [MicrosoftGraph.Model.MicrosoftGraphIdentityGovernanceTaskDefinition.t] | nil,
    :workflowTemplates => [MicrosoftGraph.Model.MicrosoftGraphIdentityGovernanceWorkflowTemplate.t] | nil,
    :workflows => [MicrosoftGraph.Model.MicrosoftGraphIdentityGovernanceWorkflow.t] | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:customTaskExtensions, :list, MicrosoftGraph.Model.MicrosoftGraphIdentityGovernanceCustomTaskExtension)
     |> Deserializer.deserialize(:deletedItems, :struct, MicrosoftGraph.Model.LifecycleWorkflowsContainerDeletedItems)
     |> Deserializer.deserialize(:settings, :struct, MicrosoftGraph.Model.MicrosoftGraphIdentityGovernanceLifecycleManagementSettings)
     |> Deserializer.deserialize(:taskDefinitions, :list, MicrosoftGraph.Model.MicrosoftGraphIdentityGovernanceTaskDefinition)
     |> Deserializer.deserialize(:workflowTemplates, :list, MicrosoftGraph.Model.MicrosoftGraphIdentityGovernanceWorkflowTemplate)
     |> Deserializer.deserialize(:workflows, :list, MicrosoftGraph.Model.MicrosoftGraphIdentityGovernanceWorkflow)
  end
end
