# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphIosVppEBook do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :assignments,
    :createdDateTime,
    :description,
    :deviceStates,
    :displayName,
    :informationUrl,
    :installSummary,
    :largeCover,
    :lastModifiedDateTime,
    :privacyInformationUrl,
    :publishedDateTime,
    :publisher,
    :userStateSummary,
    :appleId,
    :genres,
    :language,
    :seller,
    :totalLicenseCount,
    :usedLicenseCount,
    :vppOrganizationName,
    :vppTokenId
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :assignments => [MicrosoftGraph.Model.MicrosoftGraphManagedEBookAssignment.t] | nil,
    :createdDateTime => DateTime.t | nil,
    :description => String.t | nil,
    :deviceStates => [MicrosoftGraph.Model.MicrosoftGraphDeviceInstallState.t] | nil,
    :displayName => String.t | nil,
    :informationUrl => String.t | nil,
    :installSummary => MicrosoftGraph.Model.ManagedEBookInstallSummary.t | nil,
    :largeCover => MicrosoftGraph.Model.ManagedEBookLargeCover.t | nil,
    :lastModifiedDateTime => DateTime.t | nil,
    :privacyInformationUrl => String.t | nil,
    :publishedDateTime => DateTime.t | nil,
    :publisher => String.t | nil,
    :userStateSummary => [MicrosoftGraph.Model.MicrosoftGraphUserInstallStateSummary.t] | nil,
    :appleId => String.t | nil,
    :genres => [String.t] | nil,
    :language => String.t | nil,
    :seller => String.t | nil,
    :totalLicenseCount => integer() | nil,
    :usedLicenseCount => integer() | nil,
    :vppOrganizationName => String.t | nil,
    :vppTokenId => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:assignments, :list, MicrosoftGraph.Model.MicrosoftGraphManagedEBookAssignment)
     |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
     |> Deserializer.deserialize(:deviceStates, :list, MicrosoftGraph.Model.MicrosoftGraphDeviceInstallState)
     |> Deserializer.deserialize(:installSummary, :struct, MicrosoftGraph.Model.ManagedEBookInstallSummary)
     |> Deserializer.deserialize(:largeCover, :struct, MicrosoftGraph.Model.ManagedEBookLargeCover)
     |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:publishedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:userStateSummary, :list, MicrosoftGraph.Model.MicrosoftGraphUserInstallStateSummary)
  end
end
