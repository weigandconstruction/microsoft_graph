# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSecurityEdiscoveryCustodian do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :createdDateTime,
    :displayName,
    :holdStatus,
    :lastModifiedDateTime,
    :releasedDateTime,
    :status,
    :acknowledgedDateTime,
    :email,
    :lastIndexOperation,
    :siteSources,
    :unifiedGroupSources,
    :userSources
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :createdDateTime => DateTime.t | nil,
    :displayName => String.t | nil,
    :holdStatus => MicrosoftGraph.Model.DataSourceContainerHoldStatus.t | nil,
    :lastModifiedDateTime => DateTime.t | nil,
    :releasedDateTime => DateTime.t | nil,
    :status => MicrosoftGraph.Model.DataSourceContainerStatus.t | nil,
    :acknowledgedDateTime => DateTime.t | nil,
    :email => String.t | nil,
    :lastIndexOperation => MicrosoftGraph.Model.EdiscoveryCustodianLastIndexOperation.t | nil,
    :siteSources => [MicrosoftGraph.Model.MicrosoftGraphSecuritySiteSource.t] | nil,
    :unifiedGroupSources => [MicrosoftGraph.Model.MicrosoftGraphSecurityUnifiedGroupSource.t] | nil,
    :userSources => [MicrosoftGraph.Model.MicrosoftGraphSecurityUserSource.t] | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
     |> Deserializer.deserialize(:holdStatus, :struct, MicrosoftGraph.Model.DataSourceContainerHoldStatus)
     |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:releasedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:status, :struct, MicrosoftGraph.Model.DataSourceContainerStatus)
     |> Deserializer.deserialize(:acknowledgedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:lastIndexOperation, :struct, MicrosoftGraph.Model.EdiscoveryCustodianLastIndexOperation)
     |> Deserializer.deserialize(:siteSources, :list, MicrosoftGraph.Model.MicrosoftGraphSecuritySiteSource)
     |> Deserializer.deserialize(:unifiedGroupSources, :list, MicrosoftGraph.Model.MicrosoftGraphSecurityUnifiedGroupSource)
     |> Deserializer.deserialize(:userSources, :list, MicrosoftGraph.Model.MicrosoftGraphSecurityUserSource)
  end
end
