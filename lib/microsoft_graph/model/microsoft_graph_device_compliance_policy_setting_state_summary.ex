# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphDeviceCompliancePolicySettingStateSummary do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :compliantDeviceCount,
    :conflictDeviceCount,
    :deviceComplianceSettingStates,
    :errorDeviceCount,
    :nonCompliantDeviceCount,
    :notApplicableDeviceCount,
    :platformType,
    :remediatedDeviceCount,
    :setting,
    :settingName,
    :unknownDeviceCount
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :compliantDeviceCount => integer() | nil,
          :conflictDeviceCount => integer() | nil,
          :deviceComplianceSettingStates =>
            [MicrosoftGraph.Model.MicrosoftGraphDeviceComplianceSettingState.t()] | nil,
          :errorDeviceCount => integer() | nil,
          :nonCompliantDeviceCount => integer() | nil,
          :notApplicableDeviceCount => integer() | nil,
          :platformType => MicrosoftGraph.Model.MicrosoftGraphPolicyPlatformType.t() | nil,
          :remediatedDeviceCount => integer() | nil,
          :setting => String.t() | nil,
          :settingName => String.t() | nil,
          :unknownDeviceCount => integer() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :deviceComplianceSettingStates,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphDeviceComplianceSettingState
    )
    |> Deserializer.deserialize(
      :platformType,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphPolicyPlatformType
    )
  end
end
