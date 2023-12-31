# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphEndUserNotificationSettingPositiveReinforcement do
  @moduledoc """
  Positive reinforcement detail.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :defaultLanguage,
    :endUserNotification,
    :deliveryPreference
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :defaultLanguage => String.t() | nil,
          :endUserNotification =>
            MicrosoftGraph.Model.MicrosoftGraphBaseEndUserNotificationEndUserNotification.t()
            | nil,
          :deliveryPreference =>
            MicrosoftGraph.Model.PositiveReinforcementNotificationDeliveryPreference.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :endUserNotification,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphBaseEndUserNotificationEndUserNotification
    )
    |> Deserializer.deserialize(
      :deliveryPreference,
      :struct,
      MicrosoftGraph.Model.PositiveReinforcementNotificationDeliveryPreference
    )
  end
end
