# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphDelegatedPermissionClassification do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :classification,
    :permissionId,
    :permissionName
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :classification =>
            MicrosoftGraph.Model.DelegatedPermissionClassificationClassification.t() | nil,
          :permissionId => String.t() | nil,
          :permissionName => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :classification,
      :struct,
      MicrosoftGraph.Model.DelegatedPermissionClassificationClassification
    )
  end
end
