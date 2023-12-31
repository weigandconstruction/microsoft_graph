# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSecurityHostReputation do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :classification,
    :rules,
    :score
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :classification =>
            MicrosoftGraph.Model.MicrosoftGraphSecurityHostReputationClassification.t() | nil,
          :rules => [MicrosoftGraph.Model.HostReputationRulesInner.t()] | nil,
          :score => integer() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :classification,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphSecurityHostReputationClassification
    )
    |> Deserializer.deserialize(:rules, :list, MicrosoftGraph.Model.HostReputationRulesInner)
  end
end
