# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.RiskyUserRiskState do
  @moduledoc """
  State of the user's risk. Possible values are: none, confirmedSafe, remediated, dismissed, atRisk, confirmedCompromised, unknownFutureValue.
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
