# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphConfigurationManagerClientEnabledFeatures do
  @moduledoc """
  configuration Manager client enabled features
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :compliancePolicy,
    :deviceConfiguration,
    :inventory,
    :modernApps,
    :resourceAccess,
    :windowsUpdateForBusiness
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :compliancePolicy => boolean() | nil,
    :deviceConfiguration => boolean() | nil,
    :inventory => boolean() | nil,
    :modernApps => boolean() | nil,
    :resourceAccess => boolean() | nil,
    :windowsUpdateForBusiness => boolean() | nil
  }

  def decode(value) do
    value
  end
end
