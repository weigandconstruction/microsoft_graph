# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphEducationAssignment do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :addToCalendarAction,
    :addedStudentAction,
    :allowLateSubmissions,
    :allowStudentsToAddResourcesToSubmission,
    :assignDateTime,
    :assignTo,
    :assignedDateTime,
    :categories,
    :classId,
    :closeDateTime,
    :createdBy,
    :createdDateTime,
    :displayName,
    :dueDateTime,
    :feedbackResourcesFolderUrl,
    :grading,
    :instructions,
    :lastModifiedBy,
    :lastModifiedDateTime,
    :notificationChannelUrl,
    :resources,
    :resourcesFolderUrl,
    :rubric,
    :status,
    :submissions,
    :webUrl
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :addToCalendarAction => MicrosoftGraph.Model.EducationAssignmentAddToCalendarAction.t | nil,
    :addedStudentAction => MicrosoftGraph.Model.EducationAssignmentAddedStudentAction.t | nil,
    :allowLateSubmissions => boolean() | nil,
    :allowStudentsToAddResourcesToSubmission => boolean() | nil,
    :assignDateTime => DateTime.t | nil,
    :assignTo => MicrosoftGraph.Model.EducationAssignmentAssignTo.t | nil,
    :assignedDateTime => DateTime.t | nil,
    :categories => [MicrosoftGraph.Model.MicrosoftGraphEducationCategory.t] | nil,
    :classId => String.t | nil,
    :closeDateTime => DateTime.t | nil,
    :createdBy => MicrosoftGraph.Model.EducationAssignmentCreatedBy.t | nil,
    :createdDateTime => DateTime.t | nil,
    :displayName => String.t | nil,
    :dueDateTime => DateTime.t | nil,
    :feedbackResourcesFolderUrl => String.t | nil,
    :grading => MicrosoftGraph.Model.EducationAssignmentGrading.t | nil,
    :instructions => MicrosoftGraph.Model.EducationAssignmentInstructions.t | nil,
    :lastModifiedBy => MicrosoftGraph.Model.EducationAssignmentLastModifiedBy.t | nil,
    :lastModifiedDateTime => DateTime.t | nil,
    :notificationChannelUrl => String.t | nil,
    :resources => [MicrosoftGraph.Model.MicrosoftGraphEducationAssignmentResource.t] | nil,
    :resourcesFolderUrl => String.t | nil,
    :rubric => MicrosoftGraph.Model.EducationAssignmentRubric.t | nil,
    :status => MicrosoftGraph.Model.EducationAssignmentStatus.t | nil,
    :submissions => [MicrosoftGraph.Model.MicrosoftGraphEducationSubmission.t] | nil,
    :webUrl => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:addToCalendarAction, :struct, MicrosoftGraph.Model.EducationAssignmentAddToCalendarAction)
     |> Deserializer.deserialize(:addedStudentAction, :struct, MicrosoftGraph.Model.EducationAssignmentAddedStudentAction)
     |> Deserializer.deserialize(:assignDateTime, :datetime, nil)
     |> Deserializer.deserialize(:assignTo, :struct, MicrosoftGraph.Model.EducationAssignmentAssignTo)
     |> Deserializer.deserialize(:assignedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:categories, :list, MicrosoftGraph.Model.MicrosoftGraphEducationCategory)
     |> Deserializer.deserialize(:closeDateTime, :datetime, nil)
     |> Deserializer.deserialize(:createdBy, :struct, MicrosoftGraph.Model.EducationAssignmentCreatedBy)
     |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
     |> Deserializer.deserialize(:dueDateTime, :datetime, nil)
     |> Deserializer.deserialize(:grading, :struct, MicrosoftGraph.Model.EducationAssignmentGrading)
     |> Deserializer.deserialize(:instructions, :struct, MicrosoftGraph.Model.EducationAssignmentInstructions)
     |> Deserializer.deserialize(:lastModifiedBy, :struct, MicrosoftGraph.Model.EducationAssignmentLastModifiedBy)
     |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:resources, :list, MicrosoftGraph.Model.MicrosoftGraphEducationAssignmentResource)
     |> Deserializer.deserialize(:rubric, :struct, MicrosoftGraph.Model.EducationAssignmentRubric)
     |> Deserializer.deserialize(:status, :struct, MicrosoftGraph.Model.EducationAssignmentStatus)
     |> Deserializer.deserialize(:submissions, :list, MicrosoftGraph.Model.MicrosoftGraphEducationSubmission)
  end
end
