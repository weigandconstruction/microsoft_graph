# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphDeviceInstallState do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :deviceId,
    :deviceName,
    :errorCode,
    :installState,
    :lastSyncDateTime,
    :osDescription,
    :osVersion,
    :userName
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :deviceId => String.t() | nil,
          :deviceName => String.t() | nil,
          :errorCode => String.t() | nil,
          :installState => MicrosoftGraph.Model.MicrosoftGraphInstallState.t() | nil,
          :lastSyncDateTime => DateTime.t() | nil,
          :osDescription => String.t() | nil,
          :osVersion => String.t() | nil,
          :userName => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :installState,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphInstallState
    )
    |> Deserializer.deserialize(:lastSyncDateTime, :datetime, nil)
  end
end
