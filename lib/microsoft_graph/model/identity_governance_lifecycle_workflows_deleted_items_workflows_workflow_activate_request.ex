# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.IdentityGovernanceLifecycleWorkflowsDeletedItemsWorkflowsWorkflowActivateRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :subjects
  ]

  @type t :: %__MODULE__{
          :subjects =>
            [
              MicrosoftGraph.Model.IdentityGovernanceLifecycleWorkflowsDeletedItemsWorkflowsWorkflowActivateRequestSubjectsInner.t()
            ]
            | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :subjects,
      :list,
      MicrosoftGraph.Model.IdentityGovernanceLifecycleWorkflowsDeletedItemsWorkflowsWorkflowActivateRequestSubjectsInner
    )
  end
end
