# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphPermissionGrantPolicy do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :deletedDateTime,
    :description,
    :displayName,
    :excludes,
    :includes
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :deletedDateTime => DateTime.t | nil,
    :description => String.t | nil,
    :displayName => String.t | nil,
    :excludes => [MicrosoftGraph.Model.MicrosoftGraphPermissionGrantConditionSet.t] | nil,
    :includes => [MicrosoftGraph.Model.MicrosoftGraphPermissionGrantConditionSet.t] | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:deletedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:excludes, :list, MicrosoftGraph.Model.MicrosoftGraphPermissionGrantConditionSet)
     |> Deserializer.deserialize(:includes, :list, MicrosoftGraph.Model.MicrosoftGraphPermissionGrantConditionSet)
  end
end
