# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.PlannerAssignedToTaskBoardTaskFormatOrderHintsByAssignee do
  @moduledoc """
  Dictionary of hints used to order tasks on the AssignedTo view of the Task Board. The key of each entry is one of the users the task is assigned to and the value is the order hint. The format of each value is defined as outlined here.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type"
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t
  }

  def decode(value) do
    value
  end
end
