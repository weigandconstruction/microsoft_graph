# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphMicrosoftCustomTrainingSetting do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :settingType,
    :completionDateTime,
    :trainingAssignmentMappings,
    :trainingCompletionDuration
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :settingType => MicrosoftGraph.Model.MicrosoftGraphTrainingSettingSettingType.t | nil,
    :completionDateTime => DateTime.t | nil,
    :trainingAssignmentMappings => [MicrosoftGraph.Model.MicrosoftCustomTrainingSettingTrainingAssignmentMappingsInner.t] | nil,
    :trainingCompletionDuration => MicrosoftGraph.Model.MicrosoftCustomTrainingSettingTrainingCompletionDuration.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:settingType, :struct, MicrosoftGraph.Model.MicrosoftGraphTrainingSettingSettingType)
     |> Deserializer.deserialize(:completionDateTime, :datetime, nil)
     |> Deserializer.deserialize(:trainingAssignmentMappings, :list, MicrosoftGraph.Model.MicrosoftCustomTrainingSettingTrainingAssignmentMappingsInner)
     |> Deserializer.deserialize(:trainingCompletionDuration, :struct, MicrosoftGraph.Model.MicrosoftCustomTrainingSettingTrainingCompletionDuration)
  end
end
