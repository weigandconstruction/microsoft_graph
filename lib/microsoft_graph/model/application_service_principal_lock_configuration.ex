# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.ApplicationServicePrincipalLockConfiguration do
  @moduledoc """
  Specifies whether sensitive properties of a multi-tenant application should be locked for editing after the application is provisioned in a tenant. Nullable. null by default.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :allProperties,
    :credentialsWithUsageSign,
    :credentialsWithUsageVerify,
    :isEnabled,
    :tokenEncryptionKeyId
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :allProperties => boolean() | nil,
    :credentialsWithUsageSign => boolean() | nil,
    :credentialsWithUsageVerify => boolean() | nil,
    :isEnabled => boolean() | nil,
    :tokenEncryptionKeyId => boolean() | nil
  }

  def decode(value) do
    value
  end
end
