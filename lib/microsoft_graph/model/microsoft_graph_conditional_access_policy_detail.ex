# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphConditionalAccessPolicyDetail do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :conditions,
    :grantControls,
    :sessionControls
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :conditions => MicrosoftGraph.Model.MicrosoftGraphConditionalAccessConditionSet.t | nil,
    :grantControls => MicrosoftGraph.Model.MicrosoftGraphConditionalAccessPolicyDetailGrantControls.t | nil,
    :sessionControls => MicrosoftGraph.Model.MicrosoftGraphConditionalAccessPolicyDetailSessionControls.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:conditions, :struct, MicrosoftGraph.Model.MicrosoftGraphConditionalAccessConditionSet)
     |> Deserializer.deserialize(:grantControls, :struct, MicrosoftGraph.Model.MicrosoftGraphConditionalAccessPolicyDetailGrantControls)
     |> Deserializer.deserialize(:sessionControls, :struct, MicrosoftGraph.Model.MicrosoftGraphConditionalAccessPolicyDetailSessionControls)
  end
end
