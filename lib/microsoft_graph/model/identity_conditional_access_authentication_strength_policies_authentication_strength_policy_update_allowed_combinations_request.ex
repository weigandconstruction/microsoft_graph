# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.IdentityConditionalAccessAuthenticationStrengthPoliciesAuthenticationStrengthPolicyUpdateAllowedCombinationsRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :allowedCombinations
  ]

  @type t :: %__MODULE__{
    :allowedCombinations => [MicrosoftGraph.Model.IdentityConditionalAccessAuthenticationStrengthPoliciesAuthenticationStrengthPolicyUpdateAllowedCombinationsRequestAllowedCombinationsInner.t] | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:allowedCombinations, :list, MicrosoftGraph.Model.IdentityConditionalAccessAuthenticationStrengthPoliciesAuthenticationStrengthPolicyUpdateAllowedCombinationsRequestAllowedCombinationsInner)
  end
end
