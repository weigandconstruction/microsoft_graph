# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.EducationPointsOutcomePublishedPoints do
  @moduledoc """
  A copy of the points property that is made when the grade is released to the student.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :gradedBy,
    :gradedDateTime,
    :points
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :gradedBy => MicrosoftGraph.Model.MicrosoftGraphEducationAssignmentGradeGradedBy.t | nil,
    :gradedDateTime => DateTime.t | nil,
    :points => MicrosoftGraph.Model.EducationAssignmentPointsGradePoints.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:gradedBy, :struct, MicrosoftGraph.Model.MicrosoftGraphEducationAssignmentGradeGradedBy)
     |> Deserializer.deserialize(:gradedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:points, :struct, MicrosoftGraph.Model.EducationAssignmentPointsGradePoints)
  end
end
