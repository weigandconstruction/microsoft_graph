# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphConditionalAccessConditionSetLocations do
  @moduledoc """
  Locations included in and excluded from the policy.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :excludeLocations,
    :includeLocations
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :excludeLocations => [String.t] | nil,
    :includeLocations => [String.t] | nil
  }

  def decode(value) do
    value
  end
end
