# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphIosHomeScreenItem do
  @moduledoc """
  Represents an item on the iOS Home Screen
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :displayName
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :displayName => String.t | nil
  }

  def decode(value) do
    value
  end
end
