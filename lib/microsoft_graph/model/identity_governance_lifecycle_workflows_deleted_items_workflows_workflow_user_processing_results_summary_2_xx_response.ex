# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.IdentityGovernanceLifecycleWorkflowsDeletedItemsWorkflowsWorkflowUserProcessingResultsSummary2XxResponse do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :failedTasks,
    :failedUsers,
    :successfulUsers,
    :totalTasks,
    :totalUsers
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :failedTasks => integer() | nil,
          :failedUsers => integer() | nil,
          :successfulUsers => integer() | nil,
          :totalTasks => integer() | nil,
          :totalUsers => integer() | nil
        }

  def decode(value) do
    value
  end
end
