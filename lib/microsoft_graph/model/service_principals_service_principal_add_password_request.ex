# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.ServicePrincipalsServicePrincipalAddPasswordRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :passwordCredential
  ]

  @type t :: %__MODULE__{
    :passwordCredential => MicrosoftGraph.Model.ServicePrincipalsServicePrincipalAddPasswordRequestPasswordCredential.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:passwordCredential, :struct, MicrosoftGraph.Model.ServicePrincipalsServicePrincipalAddPasswordRequestPasswordCredential)
  end
end
