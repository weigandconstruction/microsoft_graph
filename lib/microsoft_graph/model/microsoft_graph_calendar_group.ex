# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphCalendarGroup do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :calendars,
    :changeKey,
    :classId,
    :name
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :calendars => [MicrosoftGraph.Model.MicrosoftGraphCalendar.t] | nil,
    :changeKey => String.t | nil,
    :classId => String.t | nil,
    :name => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:calendars, :list, MicrosoftGraph.Model.MicrosoftGraphCalendar)
  end
end
