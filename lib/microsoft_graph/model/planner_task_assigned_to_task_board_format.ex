# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.PlannerTaskAssignedToTaskBoardFormat do
  @moduledoc """
  Read-only. Nullable. Used to render the task correctly in the task board view when grouped by assignedTo.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :orderHintsByAssignee,
    :unassignedOrderHint
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :orderHintsByAssignee => MicrosoftGraph.Model.PlannerAssignedToTaskBoardTaskFormatOrderHintsByAssignee.t | nil,
    :unassignedOrderHint => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:orderHintsByAssignee, :struct, MicrosoftGraph.Model.PlannerAssignedToTaskBoardTaskFormatOrderHintsByAssignee)
  end
end
