# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphDelegatedAdminServiceManagementDetail do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :serviceManagementUrl,
    :serviceName
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :serviceManagementUrl => String.t() | nil,
          :serviceName => String.t() | nil
        }

  def decode(value) do
    value
  end
end
