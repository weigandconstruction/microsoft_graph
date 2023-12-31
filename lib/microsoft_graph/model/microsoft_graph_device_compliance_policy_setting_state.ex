# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphDeviceCompliancePolicySettingState do
  @moduledoc """
  Device Compilance Policy Setting State for a given device.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :currentValue,
    :errorCode,
    :errorDescription,
    :instanceDisplayName,
    :setting,
    :settingName,
    :sources,
    :state,
    :userEmail,
    :userId,
    :userName,
    :userPrincipalName
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :currentValue => String.t() | nil,
          :errorCode => integer() | nil,
          :errorDescription => String.t() | nil,
          :instanceDisplayName => String.t() | nil,
          :setting => String.t() | nil,
          :settingName => String.t() | nil,
          :sources =>
            [
              MicrosoftGraph.Model.MicrosoftGraphDeviceCompliancePolicySettingStateSourcesInner.t()
            ]
            | nil,
          :state => MicrosoftGraph.Model.MicrosoftGraphComplianceStatus.t() | nil,
          :userEmail => String.t() | nil,
          :userId => String.t() | nil,
          :userName => String.t() | nil,
          :userPrincipalName => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :sources,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphDeviceCompliancePolicySettingStateSourcesInner
    )
    |> Deserializer.deserialize(
      :state,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphComplianceStatus
    )
  end
end
