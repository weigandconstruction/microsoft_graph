# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.CrossTenantAccessPolicyConfigurationDefaultAutomaticUserConsentSettings do
  @moduledoc """
  Determines the default configuration for automatic user consent settings. The inboundAllowed and outboundAllowed properties are always false and cannot be updated in the default configuration. Read-only.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :inboundAllowed,
    :outboundAllowed
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :inboundAllowed => boolean() | nil,
          :outboundAllowed => boolean() | nil
        }

  def decode(value) do
    value
  end
end
