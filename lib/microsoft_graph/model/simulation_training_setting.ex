# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.SimulationTrainingSetting do
  @moduledoc """
  Details about the training settings for a simulation.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :settingType
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :settingType => MicrosoftGraph.Model.MicrosoftGraphTrainingSettingSettingType.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :settingType,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphTrainingSettingSettingType
    )
  end
end
