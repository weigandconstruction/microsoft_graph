# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAttributeRuleMembers do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :description,
    :membershipRule
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :description => String.t | nil,
    :membershipRule => String.t | nil
  }

  def decode(value) do
    value
  end
end
