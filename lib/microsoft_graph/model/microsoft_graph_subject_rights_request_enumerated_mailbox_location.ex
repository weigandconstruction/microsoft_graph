# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSubjectRightsRequestEnumeratedMailboxLocation do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :userPrincipalNames
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :userPrincipalNames => [String.t] | nil
  }

  def decode(value) do
    value
  end
end
