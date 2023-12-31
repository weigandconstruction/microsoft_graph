# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphUpdateWindowsDeviceAccountActionParameter do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :calendarSyncEnabled,
    :deviceAccount,
    :deviceAccountEmail,
    :exchangeServer,
    :passwordRotationEnabled,
    :sessionInitiationProtocalAddress
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :calendarSyncEnabled => boolean() | nil,
          :deviceAccount =>
            MicrosoftGraph.Model.MicrosoftGraphUpdateWindowsDeviceAccountActionParameterDeviceAccount.t()
            | nil,
          :deviceAccountEmail => String.t() | nil,
          :exchangeServer => String.t() | nil,
          :passwordRotationEnabled => boolean() | nil,
          :sessionInitiationProtocalAddress => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :deviceAccount,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphUpdateWindowsDeviceAccountActionParameterDeviceAccount
    )
  end
end
