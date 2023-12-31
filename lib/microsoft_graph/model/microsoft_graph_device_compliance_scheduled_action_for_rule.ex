# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphDeviceComplianceScheduledActionForRule do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :ruleName,
    :scheduledActionConfigurations
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :ruleName => String.t() | nil,
          :scheduledActionConfigurations =>
            [MicrosoftGraph.Model.MicrosoftGraphDeviceComplianceActionItem.t()] | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :scheduledActionConfigurations,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphDeviceComplianceActionItem
    )
  end
end
