# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphIdentityGovernanceParameter do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :name,
    :valueType,
    :values
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :name => String.t | nil,
    :valueType => MicrosoftGraph.Model.MicrosoftGraphIdentityGovernanceValueType.t | nil,
    :values => [String.t] | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:valueType, :struct, MicrosoftGraph.Model.MicrosoftGraphIdentityGovernanceValueType)
  end
end
