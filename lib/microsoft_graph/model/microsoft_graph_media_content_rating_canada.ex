# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphMediaContentRatingCanada do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :movieRating,
    :tvRating
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :movieRating => MicrosoftGraph.Model.MicrosoftGraphRatingCanadaMoviesType.t | nil,
    :tvRating => MicrosoftGraph.Model.MicrosoftGraphRatingCanadaTelevisionType.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:movieRating, :struct, MicrosoftGraph.Model.MicrosoftGraphRatingCanadaMoviesType)
     |> Deserializer.deserialize(:tvRating, :struct, MicrosoftGraph.Model.MicrosoftGraphRatingCanadaTelevisionType)
  end
end
