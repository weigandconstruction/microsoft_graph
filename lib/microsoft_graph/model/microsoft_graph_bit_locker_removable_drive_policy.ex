# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphBitLockerRemovableDrivePolicy do
  @moduledoc """
  BitLocker Removable Drive Policies.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :blockCrossOrganizationWriteAccess,
    :encryptionMethod,
    :requireEncryptionForWriteAccess
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :blockCrossOrganizationWriteAccess => boolean() | nil,
    :encryptionMethod => MicrosoftGraph.Model.MicrosoftGraphBitLockerRemovableDrivePolicyEncryptionMethod.t | nil,
    :requireEncryptionForWriteAccess => boolean() | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:encryptionMethod, :struct, MicrosoftGraph.Model.MicrosoftGraphBitLockerRemovableDrivePolicyEncryptionMethod)
  end
end
