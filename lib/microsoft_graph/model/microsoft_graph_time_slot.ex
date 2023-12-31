# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphTimeSlot do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :end,
    :start
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :end => MicrosoftGraph.Model.MicrosoftGraphDateTimeTimeZone.t() | nil,
          :start => MicrosoftGraph.Model.MicrosoftGraphDateTimeTimeZone.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :end,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphDateTimeTimeZone
    )
    |> Deserializer.deserialize(
      :start,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphDateTimeTimeZone
    )
  end
end
