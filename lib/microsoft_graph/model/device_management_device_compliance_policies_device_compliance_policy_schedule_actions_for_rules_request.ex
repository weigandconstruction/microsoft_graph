# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DeviceManagementDeviceCompliancePoliciesDeviceCompliancePolicyScheduleActionsForRulesRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :deviceComplianceScheduledActionForRules
  ]

  @type t :: %__MODULE__{
          :deviceComplianceScheduledActionForRules =>
            [
              MicrosoftGraph.Model.DeviceManagementDeviceCompliancePoliciesDeviceCompliancePolicyScheduleActionsForRulesRequestDeviceComplianceScheduledActionForRulesInner.t()
            ]
            | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :deviceComplianceScheduledActionForRules,
      :list,
      MicrosoftGraph.Model.DeviceManagementDeviceCompliancePoliciesDeviceCompliancePolicyScheduleActionsForRulesRequestDeviceComplianceScheduledActionForRulesInner
    )
  end
end
