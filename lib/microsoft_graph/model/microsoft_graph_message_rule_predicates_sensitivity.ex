# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphMessageRulePredicatesSensitivity do
  @moduledoc """
  Represents the sensitivity level that must be stamped on an incoming message in order for the condition or exception to apply. The possible values are: normal, personal, private, confidential.
  """

  @derive Jason.Encoder
  defstruct [
    
  ]

  @type t :: %__MODULE__{
    
  }

  def decode(value) do
    value
  end
end
