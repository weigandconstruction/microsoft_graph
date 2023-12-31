# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.ChatOnlineMeetingInfo do
  @moduledoc """
  Represents details about an online meeting. If the chat isn't associated with an online meeting, the property is empty. Read-only.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :calendarEventId,
    :joinWebUrl,
    :organizer
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :calendarEventId => String.t() | nil,
          :joinWebUrl => String.t() | nil,
          :organizer =>
            MicrosoftGraph.Model.MicrosoftGraphTeamworkOnlineMeetingInfoOrganizer.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :organizer,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphTeamworkOnlineMeetingInfoOrganizer
    )
  end
end
