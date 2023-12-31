# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAverageComparativeScore do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :averageScore,
    :basis
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :averageScore =>
            MicrosoftGraph.Model.MicrosoftGraphAverageComparativeScoreAverageScore.t() | nil,
          :basis => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :averageScore,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphAverageComparativeScoreAverageScore
    )
  end
end
