# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphDelegatedAdminRelationshipRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :action,
    :createdDateTime,
    :lastModifiedDateTime,
    :status
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :action => MicrosoftGraph.Model.MicrosoftGraphDelegatedAdminRelationshipRequestAction.t | nil,
    :createdDateTime => DateTime.t | nil,
    :lastModifiedDateTime => DateTime.t | nil,
    :status => MicrosoftGraph.Model.DelegatedAdminRelationshipRequestStatus.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:action, :struct, MicrosoftGraph.Model.MicrosoftGraphDelegatedAdminRelationshipRequestAction)
     |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
     |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:status, :struct, MicrosoftGraph.Model.DelegatedAdminRelationshipRequestStatus)
  end
end
