# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphPlannerTask do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :activeChecklistItemCount,
    :appliedCategories,
    :assignedToTaskBoardFormat,
    :assigneePriority,
    :assignments,
    :bucketId,
    :bucketTaskBoardFormat,
    :checklistItemCount,
    :completedBy,
    :completedDateTime,
    :conversationThreadId,
    :createdBy,
    :createdDateTime,
    :details,
    :dueDateTime,
    :hasDescription,
    :orderHint,
    :percentComplete,
    :planId,
    :previewType,
    :priority,
    :progressTaskBoardFormat,
    :referenceCount,
    :startDateTime,
    :title
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :activeChecklistItemCount => integer() | nil,
    :appliedCategories => MicrosoftGraph.Model.PlannerTaskAppliedCategories.t | nil,
    :assignedToTaskBoardFormat => MicrosoftGraph.Model.PlannerTaskAssignedToTaskBoardFormat.t | nil,
    :assigneePriority => String.t | nil,
    :assignments => MicrosoftGraph.Model.PlannerTaskAssignments.t | nil,
    :bucketId => String.t | nil,
    :bucketTaskBoardFormat => MicrosoftGraph.Model.PlannerTaskBucketTaskBoardFormat.t | nil,
    :checklistItemCount => integer() | nil,
    :completedBy => MicrosoftGraph.Model.PlannerTaskCompletedBy.t | nil,
    :completedDateTime => DateTime.t | nil,
    :conversationThreadId => String.t | nil,
    :createdBy => MicrosoftGraph.Model.PlannerTaskCreatedBy.t | nil,
    :createdDateTime => DateTime.t | nil,
    :details => MicrosoftGraph.Model.PlannerTaskDetails.t | nil,
    :dueDateTime => DateTime.t | nil,
    :hasDescription => boolean() | nil,
    :orderHint => String.t | nil,
    :percentComplete => integer() | nil,
    :planId => String.t | nil,
    :previewType => MicrosoftGraph.Model.PlannerTaskPreviewType.t | nil,
    :priority => integer() | nil,
    :progressTaskBoardFormat => MicrosoftGraph.Model.PlannerTaskProgressTaskBoardFormat.t | nil,
    :referenceCount => integer() | nil,
    :startDateTime => DateTime.t | nil,
    :title => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:appliedCategories, :struct, MicrosoftGraph.Model.PlannerTaskAppliedCategories)
     |> Deserializer.deserialize(:assignedToTaskBoardFormat, :struct, MicrosoftGraph.Model.PlannerTaskAssignedToTaskBoardFormat)
     |> Deserializer.deserialize(:assignments, :struct, MicrosoftGraph.Model.PlannerTaskAssignments)
     |> Deserializer.deserialize(:bucketTaskBoardFormat, :struct, MicrosoftGraph.Model.PlannerTaskBucketTaskBoardFormat)
     |> Deserializer.deserialize(:completedBy, :struct, MicrosoftGraph.Model.PlannerTaskCompletedBy)
     |> Deserializer.deserialize(:completedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:createdBy, :struct, MicrosoftGraph.Model.PlannerTaskCreatedBy)
     |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
     |> Deserializer.deserialize(:details, :struct, MicrosoftGraph.Model.PlannerTaskDetails)
     |> Deserializer.deserialize(:dueDateTime, :datetime, nil)
     |> Deserializer.deserialize(:previewType, :struct, MicrosoftGraph.Model.PlannerTaskPreviewType)
     |> Deserializer.deserialize(:progressTaskBoardFormat, :struct, MicrosoftGraph.Model.PlannerTaskProgressTaskBoardFormat)
     |> Deserializer.deserialize(:startDateTime, :datetime, nil)
  end
end
