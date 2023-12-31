# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.EducationAssignmentRubric do
  @moduledoc """
  When set, the grading rubric attached to this assignment.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :createdBy,
    :createdDateTime,
    :description,
    :displayName,
    :grading,
    :lastModifiedBy,
    :lastModifiedDateTime,
    :levels,
    :qualities
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :createdBy => MicrosoftGraph.Model.EducationRubricCreatedBy.t() | nil,
          :createdDateTime => DateTime.t() | nil,
          :description => MicrosoftGraph.Model.EducationRubricDescription.t() | nil,
          :displayName => String.t() | nil,
          :grading => MicrosoftGraph.Model.EducationRubricGrading.t() | nil,
          :lastModifiedBy =>
            MicrosoftGraph.Model.MicrosoftGraphEducationResourceLastModifiedBy.t() | nil,
          :lastModifiedDateTime => DateTime.t() | nil,
          :levels => [MicrosoftGraph.Model.EducationRubricLevelsInner.t()] | nil,
          :qualities => [MicrosoftGraph.Model.EducationRubricQualitiesInner.t()] | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :createdBy,
      :struct,
      MicrosoftGraph.Model.EducationRubricCreatedBy
    )
    |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :description,
      :struct,
      MicrosoftGraph.Model.EducationRubricDescription
    )
    |> Deserializer.deserialize(:grading, :struct, MicrosoftGraph.Model.EducationRubricGrading)
    |> Deserializer.deserialize(
      :lastModifiedBy,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphEducationResourceLastModifiedBy
    )
    |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
    |> Deserializer.deserialize(:levels, :list, MicrosoftGraph.Model.EducationRubricLevelsInner)
    |> Deserializer.deserialize(
      :qualities,
      :list,
      MicrosoftGraph.Model.EducationRubricQualitiesInner
    )
  end
end
