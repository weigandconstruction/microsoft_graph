# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphReferenceAttachment do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :contentType,
    :isInline,
    :lastModifiedDateTime,
    :name,
    :size
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :contentType => String.t | nil,
    :isInline => boolean() | nil,
    :lastModifiedDateTime => DateTime.t | nil,
    :name => String.t | nil,
    :size => integer() | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
  end
end
