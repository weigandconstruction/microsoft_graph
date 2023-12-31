# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphPresenceStatusMessageExpiryDateTime do
  @moduledoc """
  Time in which the status message expires.If not provided, the status message doesn't expire.expiryDateTime.dateTime shouldn't include time zone.expiryDateTime isn't available when you request the presence of another user.
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
