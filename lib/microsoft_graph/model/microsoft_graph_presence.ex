# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphPresence do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :activity,
    :availability,
    :statusMessage
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :activity => String.t() | nil,
          :availability => String.t() | nil,
          :statusMessage => MicrosoftGraph.Model.PresenceStatusMessage.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :statusMessage,
      :struct,
      MicrosoftGraph.Model.PresenceStatusMessage
    )
  end
end
