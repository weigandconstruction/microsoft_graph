# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.SitesSitePermissionsPermissionGrantRequestRecipientsInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :alias,
    :email,
    :objectId
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :alias => String.t() | nil,
          :email => String.t() | nil,
          :objectId => String.t() | nil
        }

  def decode(value) do
    value
  end
end
