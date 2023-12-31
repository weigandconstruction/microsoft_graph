# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.EducationAssignmentAddedStudentAction do
  @moduledoc """
  Optional field to control the assignment behavior for students who are added after the assignment is published. If not specified, defaults to none. Supported values are: none, assignIfOpen. For example, a teacher can use assignIfOpen to indicate that an assignment should be assigned to any new student who joins the class while the assignment is still open, and none to indicate that an assignment should not be assigned to new students.
  """

  @derive Jason.Encoder
  defstruct []

  @type t :: %__MODULE__{}

  def decode(value) do
    value
  end
end
