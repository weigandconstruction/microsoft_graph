# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphManagedAppProtection do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :createdDateTime,
    :description,
    :displayName,
    :lastModifiedDateTime,
    :version,
    :allowedDataStorageLocations,
    :allowedInboundDataTransferSources,
    :allowedOutboundClipboardSharingLevel,
    :allowedOutboundDataTransferDestinations,
    :contactSyncBlocked,
    :dataBackupBlocked,
    :deviceComplianceRequired,
    :disableAppPinIfDevicePinIsSet,
    :fingerprintBlocked,
    :managedBrowser,
    :managedBrowserToOpenLinksRequired,
    :maximumPinRetries,
    :minimumPinLength,
    :minimumRequiredAppVersion,
    :minimumRequiredOsVersion,
    :minimumWarningAppVersion,
    :minimumWarningOsVersion,
    :organizationalCredentialsRequired,
    :periodBeforePinReset,
    :periodOfflineBeforeAccessCheck,
    :periodOfflineBeforeWipeIsEnforced,
    :periodOnlineBeforeAccessCheck,
    :pinCharacterSet,
    :pinRequired,
    :printBlocked,
    :saveAsBlocked,
    :simplePinBlocked
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :createdDateTime => DateTime.t | nil,
    :description => String.t | nil,
    :displayName => String.t | nil,
    :lastModifiedDateTime => DateTime.t | nil,
    :version => String.t | nil,
    :allowedDataStorageLocations => [MicrosoftGraph.Model.MicrosoftGraphManagedAppDataStorageLocation.t] | nil,
    :allowedInboundDataTransferSources => MicrosoftGraph.Model.MicrosoftGraphManagedAppDataTransferLevel.t | nil,
    :allowedOutboundClipboardSharingLevel => MicrosoftGraph.Model.MicrosoftGraphManagedAppClipboardSharingLevel.t | nil,
    :allowedOutboundDataTransferDestinations => MicrosoftGraph.Model.MicrosoftGraphManagedAppDataTransferLevel.t | nil,
    :contactSyncBlocked => boolean() | nil,
    :dataBackupBlocked => boolean() | nil,
    :deviceComplianceRequired => boolean() | nil,
    :disableAppPinIfDevicePinIsSet => boolean() | nil,
    :fingerprintBlocked => boolean() | nil,
    :managedBrowser => MicrosoftGraph.Model.MicrosoftGraphManagedBrowserType.t | nil,
    :managedBrowserToOpenLinksRequired => boolean() | nil,
    :maximumPinRetries => integer() | nil,
    :minimumPinLength => integer() | nil,
    :minimumRequiredAppVersion => String.t | nil,
    :minimumRequiredOsVersion => String.t | nil,
    :minimumWarningAppVersion => String.t | nil,
    :minimumWarningOsVersion => String.t | nil,
    :organizationalCredentialsRequired => boolean() | nil,
    :periodBeforePinReset => String.t | nil,
    :periodOfflineBeforeAccessCheck => String.t | nil,
    :periodOfflineBeforeWipeIsEnforced => String.t | nil,
    :periodOnlineBeforeAccessCheck => String.t | nil,
    :pinCharacterSet => MicrosoftGraph.Model.MicrosoftGraphManagedAppPinCharacterSet.t | nil,
    :pinRequired => boolean() | nil,
    :printBlocked => boolean() | nil,
    :saveAsBlocked => boolean() | nil,
    :simplePinBlocked => boolean() | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
     |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:allowedDataStorageLocations, :list, MicrosoftGraph.Model.MicrosoftGraphManagedAppDataStorageLocation)
     |> Deserializer.deserialize(:allowedInboundDataTransferSources, :struct, MicrosoftGraph.Model.MicrosoftGraphManagedAppDataTransferLevel)
     |> Deserializer.deserialize(:allowedOutboundClipboardSharingLevel, :struct, MicrosoftGraph.Model.MicrosoftGraphManagedAppClipboardSharingLevel)
     |> Deserializer.deserialize(:allowedOutboundDataTransferDestinations, :struct, MicrosoftGraph.Model.MicrosoftGraphManagedAppDataTransferLevel)
     |> Deserializer.deserialize(:managedBrowser, :struct, MicrosoftGraph.Model.MicrosoftGraphManagedBrowserType)
     |> Deserializer.deserialize(:pinCharacterSet, :struct, MicrosoftGraph.Model.MicrosoftGraphManagedAppPinCharacterSet)
  end
end
