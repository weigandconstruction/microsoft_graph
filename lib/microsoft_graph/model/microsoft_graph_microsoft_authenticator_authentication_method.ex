# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphMicrosoftAuthenticatorAuthenticationMethod do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :createdDateTime,
    :device,
    :deviceTag,
    :displayName,
    :phoneAppVersion
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :createdDateTime => DateTime.t() | nil,
          :device =>
            MicrosoftGraph.Model.MicrosoftAuthenticatorAuthenticationMethodDevice.t() | nil,
          :deviceTag => String.t() | nil,
          :displayName => String.t() | nil,
          :phoneAppVersion => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :device,
      :struct,
      MicrosoftGraph.Model.MicrosoftAuthenticatorAuthenticationMethodDevice
    )
  end
end
