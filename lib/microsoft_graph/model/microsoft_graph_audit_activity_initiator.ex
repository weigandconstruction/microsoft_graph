# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAuditActivityInitiator do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :app,
    :user
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :app => MicrosoftGraph.Model.MicrosoftGraphAuditActivityInitiatorApp.t | nil,
    :user => MicrosoftGraph.Model.MicrosoftGraphAuditActivityInitiatorUser.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:app, :struct, MicrosoftGraph.Model.MicrosoftGraphAuditActivityInitiatorApp)
     |> Deserializer.deserialize(:user, :struct, MicrosoftGraph.Model.MicrosoftGraphAuditActivityInitiatorUser)
  end
end
