# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphCrossTenantUserSyncInbound do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :isSyncAllowed
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :isSyncAllowed => boolean() | nil
        }

  def decode(value) do
    value
  end
end
