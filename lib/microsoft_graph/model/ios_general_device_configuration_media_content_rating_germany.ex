# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.IosGeneralDeviceConfigurationMediaContentRatingGermany do
  @moduledoc """
  Media content rating settings for Germany
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :movieRating,
    :tvRating
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :movieRating => MicrosoftGraph.Model.MicrosoftGraphRatingGermanyMoviesType.t() | nil,
          :tvRating => MicrosoftGraph.Model.MicrosoftGraphRatingGermanyTelevisionType.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :movieRating,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphRatingGermanyMoviesType
    )
    |> Deserializer.deserialize(
      :tvRating,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphRatingGermanyTelevisionType
    )
  end
end
