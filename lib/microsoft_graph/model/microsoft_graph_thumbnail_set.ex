# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphThumbnailSet do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :large,
    :medium,
    :small,
    :source
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :large => MicrosoftGraph.Model.ThumbnailSetLarge.t() | nil,
          :medium => MicrosoftGraph.Model.ThumbnailSetMedium.t() | nil,
          :small => MicrosoftGraph.Model.ThumbnailSetSmall.t() | nil,
          :source => MicrosoftGraph.Model.ThumbnailSetSource.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:large, :struct, MicrosoftGraph.Model.ThumbnailSetLarge)
    |> Deserializer.deserialize(:medium, :struct, MicrosoftGraph.Model.ThumbnailSetMedium)
    |> Deserializer.deserialize(:small, :struct, MicrosoftGraph.Model.ThumbnailSetSmall)
    |> Deserializer.deserialize(:source, :struct, MicrosoftGraph.Model.ThumbnailSetSource)
  end
end
