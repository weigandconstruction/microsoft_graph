# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.CollectionOfSiteAllOfValueInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :createdBy,
    :createdByUser,
    :createdDateTime,
    :description,
    :eTag,
    :lastModifiedBy,
    :lastModifiedByUser,
    :lastModifiedDateTime,
    :name,
    :parentReference,
    :webUrl,
    :analytics,
    :columns,
    :contentTypes,
    :displayName,
    :drive,
    :drives,
    :error,
    :externalColumns,
    :isPersonalSite,
    :items,
    :lists,
    :onenote,
    :operations,
    :permissions,
    :root,
    :sharepointIds,
    :siteCollection,
    :sites,
    :termStore,
    :termStores
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :createdBy => MicrosoftGraph.Model.BaseItemCreatedBy.t | nil,
    :createdByUser => MicrosoftGraph.Model.BaseItemCreatedByUser.t | nil,
    :createdDateTime => DateTime.t | nil,
    :description => String.t | nil,
    :eTag => String.t | nil,
    :lastModifiedBy => MicrosoftGraph.Model.BaseItemLastModifiedBy.t | nil,
    :lastModifiedByUser => MicrosoftGraph.Model.BaseItemLastModifiedByUser.t | nil,
    :lastModifiedDateTime => DateTime.t | nil,
    :name => String.t | nil,
    :parentReference => MicrosoftGraph.Model.BaseItemParentReference.t | nil,
    :webUrl => String.t | nil,
    :analytics => MicrosoftGraph.Model.SiteAnalytics.t | nil,
    :columns => [MicrosoftGraph.Model.MicrosoftGraphColumnDefinition.t] | nil,
    :contentTypes => [MicrosoftGraph.Model.MicrosoftGraphContentType.t] | nil,
    :displayName => String.t | nil,
    :drive => MicrosoftGraph.Model.SiteDrive.t | nil,
    :drives => [MicrosoftGraph.Model.MicrosoftGraphDrive.t] | nil,
    :error => MicrosoftGraph.Model.MicrosoftGraphPublicErrorResponseError.t | nil,
    :externalColumns => [MicrosoftGraph.Model.MicrosoftGraphColumnDefinition.t] | nil,
    :isPersonalSite => boolean() | nil,
    :items => [MicrosoftGraph.Model.MicrosoftGraphBaseItem.t] | nil,
    :lists => [MicrosoftGraph.Model.MicrosoftGraphList.t] | nil,
    :onenote => MicrosoftGraph.Model.SiteOnenote.t | nil,
    :operations => [MicrosoftGraph.Model.MicrosoftGraphRichLongRunningOperation.t] | nil,
    :permissions => [MicrosoftGraph.Model.MicrosoftGraphPermission.t] | nil,
    :root => MicrosoftGraph.Model.SiteRoot.t | nil,
    :sharepointIds => MicrosoftGraph.Model.MicrosoftGraphItemReferenceSharepointIds.t | nil,
    :siteCollection => MicrosoftGraph.Model.SiteSiteCollection.t | nil,
    :sites => [MicrosoftGraph.Model.MicrosoftGraphSite.t] | nil,
    :termStore => MicrosoftGraph.Model.SiteTermStore.t | nil,
    :termStores => [MicrosoftGraph.Model.MicrosoftGraphTermStoreStore.t] | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:createdBy, :struct, MicrosoftGraph.Model.BaseItemCreatedBy)
     |> Deserializer.deserialize(:createdByUser, :struct, MicrosoftGraph.Model.BaseItemCreatedByUser)
     |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
     |> Deserializer.deserialize(:lastModifiedBy, :struct, MicrosoftGraph.Model.BaseItemLastModifiedBy)
     |> Deserializer.deserialize(:lastModifiedByUser, :struct, MicrosoftGraph.Model.BaseItemLastModifiedByUser)
     |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:parentReference, :struct, MicrosoftGraph.Model.BaseItemParentReference)
     |> Deserializer.deserialize(:analytics, :struct, MicrosoftGraph.Model.SiteAnalytics)
     |> Deserializer.deserialize(:columns, :list, MicrosoftGraph.Model.MicrosoftGraphColumnDefinition)
     |> Deserializer.deserialize(:contentTypes, :list, MicrosoftGraph.Model.MicrosoftGraphContentType)
     |> Deserializer.deserialize(:drive, :struct, MicrosoftGraph.Model.SiteDrive)
     |> Deserializer.deserialize(:drives, :list, MicrosoftGraph.Model.MicrosoftGraphDrive)
     |> Deserializer.deserialize(:error, :struct, MicrosoftGraph.Model.MicrosoftGraphPublicErrorResponseError)
     |> Deserializer.deserialize(:externalColumns, :list, MicrosoftGraph.Model.MicrosoftGraphColumnDefinition)
     |> Deserializer.deserialize(:items, :list, MicrosoftGraph.Model.MicrosoftGraphBaseItem)
     |> Deserializer.deserialize(:lists, :list, MicrosoftGraph.Model.MicrosoftGraphList)
     |> Deserializer.deserialize(:onenote, :struct, MicrosoftGraph.Model.SiteOnenote)
     |> Deserializer.deserialize(:operations, :list, MicrosoftGraph.Model.MicrosoftGraphRichLongRunningOperation)
     |> Deserializer.deserialize(:permissions, :list, MicrosoftGraph.Model.MicrosoftGraphPermission)
     |> Deserializer.deserialize(:root, :struct, MicrosoftGraph.Model.SiteRoot)
     |> Deserializer.deserialize(:sharepointIds, :struct, MicrosoftGraph.Model.MicrosoftGraphItemReferenceSharepointIds)
     |> Deserializer.deserialize(:siteCollection, :struct, MicrosoftGraph.Model.SiteSiteCollection)
     |> Deserializer.deserialize(:sites, :list, MicrosoftGraph.Model.MicrosoftGraphSite)
     |> Deserializer.deserialize(:termStore, :struct, MicrosoftGraph.Model.SiteTermStore)
     |> Deserializer.deserialize(:termStores, :list, MicrosoftGraph.Model.MicrosoftGraphTermStoreStore)
  end
end
