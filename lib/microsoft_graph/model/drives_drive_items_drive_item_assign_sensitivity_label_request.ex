# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DrivesDriveItemsDriveItemAssignSensitivityLabelRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :assignmentMethod,
    :justificationText,
    :sensitivityLabelId
  ]

  @type t :: %__MODULE__{
    :assignmentMethod => MicrosoftGraph.Model.DrivesDriveItemsDriveItemAssignSensitivityLabelRequestAssignmentMethod.t | nil,
    :justificationText => String.t | nil,
    :sensitivityLabelId => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:assignmentMethod, :struct, MicrosoftGraph.Model.DrivesDriveItemsDriveItemAssignSensitivityLabelRequestAssignmentMethod)
  end
end
