# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphEntitlementManagementSettings do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :durationUntilExternalUserDeletedAfterBlocked,
    :externalUserLifecycleAction
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :durationUntilExternalUserDeletedAfterBlocked => String.t | nil,
    :externalUserLifecycleAction => MicrosoftGraph.Model.EntitlementManagementSettingsExternalUserLifecycleAction.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:externalUserLifecycleAction, :struct, MicrosoftGraph.Model.EntitlementManagementSettingsExternalUserLifecycleAction)
  end
end
