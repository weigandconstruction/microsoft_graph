# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphWorkingHours do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :daysOfWeek,
    :endTime,
    :startTime,
    :timeZone
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :daysOfWeek => [MicrosoftGraph.Model.MicrosoftGraphRecurrencePatternDaysOfWeekInner.t] | nil,
    :endTime => String.t | nil,
    :startTime => String.t | nil,
    :timeZone => MicrosoftGraph.Model.MicrosoftGraphWorkingHoursTimeZone.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:daysOfWeek, :list, MicrosoftGraph.Model.MicrosoftGraphRecurrencePatternDaysOfWeekInner)
     |> Deserializer.deserialize(:timeZone, :struct, MicrosoftGraph.Model.MicrosoftGraphWorkingHoursTimeZone)
  end
end
