# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphUserRegistrationMethodSummary do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :totalUserCount,
    :userRegistrationMethodCounts,
    :userRoles,
    :userTypes
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :totalUserCount => integer() | nil,
    :userRegistrationMethodCounts => [MicrosoftGraph.Model.MicrosoftGraphUserRegistrationMethodCount.t] | nil,
    :userRoles => MicrosoftGraph.Model.MicrosoftGraphUserRegistrationFeatureSummaryUserRoles.t | nil,
    :userTypes => MicrosoftGraph.Model.MicrosoftGraphUserRegistrationFeatureSummaryUserTypes.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:userRegistrationMethodCounts, :list, MicrosoftGraph.Model.MicrosoftGraphUserRegistrationMethodCount)
     |> Deserializer.deserialize(:userRoles, :struct, MicrosoftGraph.Model.MicrosoftGraphUserRegistrationFeatureSummaryUserRoles)
     |> Deserializer.deserialize(:userTypes, :struct, MicrosoftGraph.Model.MicrosoftGraphUserRegistrationFeatureSummaryUserTypes)
  end
end
