# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphOmaSettingDateTime do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :description,
    :displayName,
    :omaUri,
    :value
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :omaUri => String.t() | nil,
          :value => DateTime.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:value, :datetime, nil)
  end
end
