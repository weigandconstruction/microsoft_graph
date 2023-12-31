# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphInformationProtectionBitlocker do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :recoveryKeys
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :recoveryKeys => [MicrosoftGraph.Model.MicrosoftGraphBitlockerRecoveryKey.t()] | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :recoveryKeys,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphBitlockerRecoveryKey
    )
  end
end
