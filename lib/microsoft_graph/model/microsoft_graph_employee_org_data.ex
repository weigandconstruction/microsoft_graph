# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphEmployeeOrgData do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :costCenter,
    :division
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :costCenter => String.t() | nil,
          :division => String.t() | nil
        }

  def decode(value) do
    value
  end
end
