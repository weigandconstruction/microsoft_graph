# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSecurityHostReputationRule do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :description,
    :name,
    :relatedDetailsUrl,
    :severity
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :description => String.t() | nil,
          :name => String.t() | nil,
          :relatedDetailsUrl => String.t() | nil,
          :severity =>
            MicrosoftGraph.Model.MicrosoftGraphSecurityHostReputationRuleSeverity.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :severity,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphSecurityHostReputationRuleSeverity
    )
  end
end
