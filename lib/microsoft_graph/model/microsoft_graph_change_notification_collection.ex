# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphChangeNotificationCollection do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :validationTokens,
    :value
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :validationTokens => [String.t()] | nil,
          :value => [MicrosoftGraph.Model.MicrosoftGraphChangeNotification.t()] | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :value,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphChangeNotification
    )
  end
end
