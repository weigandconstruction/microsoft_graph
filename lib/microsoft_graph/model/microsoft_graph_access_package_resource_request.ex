# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAccessPackageResourceRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :catalog,
    :createdDateTime,
    :requestType,
    :resource,
    :state
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :catalog => MicrosoftGraph.Model.AccessPackageResourceRequestCatalog.t | nil,
    :createdDateTime => DateTime.t | nil,
    :requestType => MicrosoftGraph.Model.AccessPackageResourceRequestRequestType.t | nil,
    :resource => MicrosoftGraph.Model.AccessPackageResourceRoleResource.t | nil,
    :state => MicrosoftGraph.Model.AccessPackageResourceRequestState.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:catalog, :struct, MicrosoftGraph.Model.AccessPackageResourceRequestCatalog)
     |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
     |> Deserializer.deserialize(:requestType, :struct, MicrosoftGraph.Model.AccessPackageResourceRequestRequestType)
     |> Deserializer.deserialize(:resource, :struct, MicrosoftGraph.Model.AccessPackageResourceRoleResource)
     |> Deserializer.deserialize(:state, :struct, MicrosoftGraph.Model.AccessPackageResourceRequestState)
  end
end
