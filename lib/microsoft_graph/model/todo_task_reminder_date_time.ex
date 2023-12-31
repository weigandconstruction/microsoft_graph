# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.TodoTaskReminderDateTime do
  @moduledoc """
  The date and time in the specified time zone for a reminder alert of the task to occur.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :dateTime,
    :timeZone
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :dateTime => String.t() | nil,
          :timeZone => String.t() | nil
        }

  def decode(value) do
    value
  end
end
