# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.PrinterShareViewPoint do
  @moduledoc """
  Additional data for a printer share as viewed by the signed-in user.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :lastUsedDateTime
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :lastUsedDateTime => DateTime.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:lastUsedDateTime, :datetime, nil)
  end
end
