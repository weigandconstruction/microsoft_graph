# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSubjectRightsRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :approvers,
    :assignedTo,
    :closedDateTime,
    :collaborators,
    :contentQuery,
    :createdBy,
    :createdDateTime,
    :dataSubject,
    :dataSubjectType,
    :description,
    :displayName,
    :externalId,
    :history,
    :includeAllVersions,
    :includeAuthoredContent,
    :insight,
    :internalDueDateTime,
    :lastModifiedBy,
    :lastModifiedDateTime,
    :mailboxLocations,
    :notes,
    :pauseAfterEstimate,
    :regulations,
    :siteLocations,
    :stages,
    :status,
    :team,
    :type
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :approvers => [MicrosoftGraph.Model.MicrosoftGraphUser.t()] | nil,
          :assignedTo => MicrosoftGraph.Model.SubjectRightsRequestAssignedTo.t() | nil,
          :closedDateTime => DateTime.t() | nil,
          :collaborators => [MicrosoftGraph.Model.MicrosoftGraphUser.t()] | nil,
          :contentQuery => String.t() | nil,
          :createdBy => MicrosoftGraph.Model.SubjectRightsRequestCreatedBy.t() | nil,
          :createdDateTime => DateTime.t() | nil,
          :dataSubject => MicrosoftGraph.Model.SubjectRightsRequestDataSubject.t() | nil,
          :dataSubjectType => MicrosoftGraph.Model.SubjectRightsRequestDataSubjectType.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :externalId => String.t() | nil,
          :history => [MicrosoftGraph.Model.SubjectRightsRequestHistoryInner.t()] | nil,
          :includeAllVersions => boolean() | nil,
          :includeAuthoredContent => boolean() | nil,
          :insight => MicrosoftGraph.Model.SubjectRightsRequestInsight.t() | nil,
          :internalDueDateTime => DateTime.t() | nil,
          :lastModifiedBy => MicrosoftGraph.Model.SubjectRightsRequestLastModifiedBy.t() | nil,
          :lastModifiedDateTime => DateTime.t() | nil,
          :mailboxLocations =>
            MicrosoftGraph.Model.SubjectRightsRequestMailboxLocations.t() | nil,
          :notes => [MicrosoftGraph.Model.MicrosoftGraphAuthoredNote.t()] | nil,
          :pauseAfterEstimate => boolean() | nil,
          :regulations => [String.t()] | nil,
          :siteLocations => MicrosoftGraph.Model.SubjectRightsRequestSiteLocations.t() | nil,
          :stages => [MicrosoftGraph.Model.SubjectRightsRequestStagesInner.t()] | nil,
          :status => MicrosoftGraph.Model.SubjectRightsRequestStatus.t() | nil,
          :team => MicrosoftGraph.Model.SubjectRightsRequestTeam.t() | nil,
          :type => MicrosoftGraph.Model.SubjectRightsRequestType.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:approvers, :list, MicrosoftGraph.Model.MicrosoftGraphUser)
    |> Deserializer.deserialize(
      :assignedTo,
      :struct,
      MicrosoftGraph.Model.SubjectRightsRequestAssignedTo
    )
    |> Deserializer.deserialize(:closedDateTime, :datetime, nil)
    |> Deserializer.deserialize(:collaborators, :list, MicrosoftGraph.Model.MicrosoftGraphUser)
    |> Deserializer.deserialize(
      :createdBy,
      :struct,
      MicrosoftGraph.Model.SubjectRightsRequestCreatedBy
    )
    |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :dataSubject,
      :struct,
      MicrosoftGraph.Model.SubjectRightsRequestDataSubject
    )
    |> Deserializer.deserialize(
      :dataSubjectType,
      :struct,
      MicrosoftGraph.Model.SubjectRightsRequestDataSubjectType
    )
    |> Deserializer.deserialize(
      :history,
      :list,
      MicrosoftGraph.Model.SubjectRightsRequestHistoryInner
    )
    |> Deserializer.deserialize(
      :insight,
      :struct,
      MicrosoftGraph.Model.SubjectRightsRequestInsight
    )
    |> Deserializer.deserialize(:internalDueDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :lastModifiedBy,
      :struct,
      MicrosoftGraph.Model.SubjectRightsRequestLastModifiedBy
    )
    |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :mailboxLocations,
      :struct,
      MicrosoftGraph.Model.SubjectRightsRequestMailboxLocations
    )
    |> Deserializer.deserialize(:notes, :list, MicrosoftGraph.Model.MicrosoftGraphAuthoredNote)
    |> Deserializer.deserialize(
      :siteLocations,
      :struct,
      MicrosoftGraph.Model.SubjectRightsRequestSiteLocations
    )
    |> Deserializer.deserialize(
      :stages,
      :list,
      MicrosoftGraph.Model.SubjectRightsRequestStagesInner
    )
    |> Deserializer.deserialize(:status, :struct, MicrosoftGraph.Model.SubjectRightsRequestStatus)
    |> Deserializer.deserialize(:team, :struct, MicrosoftGraph.Model.SubjectRightsRequestTeam)
    |> Deserializer.deserialize(:type, :struct, MicrosoftGraph.Model.SubjectRightsRequestType)
  end
end
