# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphServiceUpdateMessageViewpoint do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :isArchived,
    :isFavorited,
    :isRead
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :isArchived => boolean() | nil,
    :isFavorited => boolean() | nil,
    :isRead => boolean() | nil
  }

  def decode(value) do
    value
  end
end
