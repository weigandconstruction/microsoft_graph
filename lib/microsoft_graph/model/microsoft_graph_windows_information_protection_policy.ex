# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphWindowsInformationProtectionPolicy do
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
    :assignments,
    :azureRightsManagementServicesAllowed,
    :dataRecoveryCertificate,
    :enforcementLevel,
    :enterpriseDomain,
    :enterpriseIPRanges,
    :enterpriseIPRangesAreAuthoritative,
    :enterpriseInternalProxyServers,
    :enterpriseNetworkDomainNames,
    :enterpriseProtectedDomainNames,
    :enterpriseProxiedDomains,
    :enterpriseProxyServers,
    :enterpriseProxyServersAreAuthoritative,
    :exemptAppLockerFiles,
    :exemptApps,
    :iconsVisible,
    :indexingEncryptedStoresOrItemsBlocked,
    :isAssigned,
    :neutralDomainResources,
    :protectedAppLockerFiles,
    :protectedApps,
    :protectionUnderLockConfigRequired,
    :revokeOnUnenrollDisabled,
    :rightsManagementServicesTemplateId,
    :smbAutoEncryptedFileExtensions,
    :daysWithoutContactBeforeUnenroll,
    :mdmEnrollmentUrl,
    :minutesOfInactivityBeforeDeviceLock,
    :numberOfPastPinsRemembered,
    :passwordMaximumAttemptCount,
    :pinExpirationDays,
    :pinLowercaseLetters,
    :pinMinimumLength,
    :pinSpecialCharacters,
    :pinUppercaseLetters,
    :revokeOnMdmHandoffDisabled,
    :windowsHelloForBusinessBlocked
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :createdDateTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :lastModifiedDateTime => DateTime.t() | nil,
          :version => String.t() | nil,
          :assignments =>
            [MicrosoftGraph.Model.MicrosoftGraphTargetedManagedAppPolicyAssignment.t()] | nil,
          :azureRightsManagementServicesAllowed => boolean() | nil,
          :dataRecoveryCertificate =>
            MicrosoftGraph.Model.WindowsInformationProtectionDataRecoveryCertificate.t() | nil,
          :enforcementLevel =>
            MicrosoftGraph.Model.MicrosoftGraphWindowsInformationProtectionEnforcementLevel.t()
            | nil,
          :enterpriseDomain => String.t() | nil,
          :enterpriseIPRanges =>
            [MicrosoftGraph.Model.WindowsInformationProtectionEnterpriseIpRangesInner.t()] | nil,
          :enterpriseIPRangesAreAuthoritative => boolean() | nil,
          :enterpriseInternalProxyServers =>
            [
              MicrosoftGraph.Model.WindowsInformationProtectionEnterpriseInternalProxyServersInner.t()
            ]
            | nil,
          :enterpriseNetworkDomainNames =>
            [
              MicrosoftGraph.Model.WindowsInformationProtectionEnterpriseInternalProxyServersInner.t()
            ]
            | nil,
          :enterpriseProtectedDomainNames =>
            [
              MicrosoftGraph.Model.WindowsInformationProtectionEnterpriseInternalProxyServersInner.t()
            ]
            | nil,
          :enterpriseProxiedDomains =>
            [MicrosoftGraph.Model.WindowsInformationProtectionEnterpriseProxiedDomainsInner.t()]
            | nil,
          :enterpriseProxyServers =>
            [
              MicrosoftGraph.Model.WindowsInformationProtectionEnterpriseInternalProxyServersInner.t()
            ]
            | nil,
          :enterpriseProxyServersAreAuthoritative => boolean() | nil,
          :exemptAppLockerFiles =>
            [MicrosoftGraph.Model.MicrosoftGraphWindowsInformationProtectionAppLockerFile.t()]
            | nil,
          :exemptApps =>
            [MicrosoftGraph.Model.WindowsInformationProtectionExemptAppsInner.t()] | nil,
          :iconsVisible => boolean() | nil,
          :indexingEncryptedStoresOrItemsBlocked => boolean() | nil,
          :isAssigned => boolean() | nil,
          :neutralDomainResources =>
            [
              MicrosoftGraph.Model.WindowsInformationProtectionEnterpriseInternalProxyServersInner.t()
            ]
            | nil,
          :protectedAppLockerFiles =>
            [MicrosoftGraph.Model.MicrosoftGraphWindowsInformationProtectionAppLockerFile.t()]
            | nil,
          :protectedApps =>
            [MicrosoftGraph.Model.WindowsInformationProtectionExemptAppsInner.t()] | nil,
          :protectionUnderLockConfigRequired => boolean() | nil,
          :revokeOnUnenrollDisabled => boolean() | nil,
          :rightsManagementServicesTemplateId => String.t() | nil,
          :smbAutoEncryptedFileExtensions =>
            [
              MicrosoftGraph.Model.WindowsInformationProtectionEnterpriseInternalProxyServersInner.t()
            ]
            | nil,
          :daysWithoutContactBeforeUnenroll => integer() | nil,
          :mdmEnrollmentUrl => String.t() | nil,
          :minutesOfInactivityBeforeDeviceLock => integer() | nil,
          :numberOfPastPinsRemembered => integer() | nil,
          :passwordMaximumAttemptCount => integer() | nil,
          :pinExpirationDays => integer() | nil,
          :pinLowercaseLetters =>
            MicrosoftGraph.Model.MicrosoftGraphWindowsInformationProtectionPinCharacterRequirements.t()
            | nil,
          :pinMinimumLength => integer() | nil,
          :pinSpecialCharacters =>
            MicrosoftGraph.Model.MicrosoftGraphWindowsInformationProtectionPinCharacterRequirements.t()
            | nil,
          :pinUppercaseLetters =>
            MicrosoftGraph.Model.MicrosoftGraphWindowsInformationProtectionPinCharacterRequirements.t()
            | nil,
          :revokeOnMdmHandoffDisabled => boolean() | nil,
          :windowsHelloForBusinessBlocked => boolean() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
    |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :assignments,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphTargetedManagedAppPolicyAssignment
    )
    |> Deserializer.deserialize(
      :dataRecoveryCertificate,
      :struct,
      MicrosoftGraph.Model.WindowsInformationProtectionDataRecoveryCertificate
    )
    |> Deserializer.deserialize(
      :enforcementLevel,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphWindowsInformationProtectionEnforcementLevel
    )
    |> Deserializer.deserialize(
      :enterpriseIPRanges,
      :list,
      MicrosoftGraph.Model.WindowsInformationProtectionEnterpriseIpRangesInner
    )
    |> Deserializer.deserialize(
      :enterpriseInternalProxyServers,
      :list,
      MicrosoftGraph.Model.WindowsInformationProtectionEnterpriseInternalProxyServersInner
    )
    |> Deserializer.deserialize(
      :enterpriseNetworkDomainNames,
      :list,
      MicrosoftGraph.Model.WindowsInformationProtectionEnterpriseInternalProxyServersInner
    )
    |> Deserializer.deserialize(
      :enterpriseProtectedDomainNames,
      :list,
      MicrosoftGraph.Model.WindowsInformationProtectionEnterpriseInternalProxyServersInner
    )
    |> Deserializer.deserialize(
      :enterpriseProxiedDomains,
      :list,
      MicrosoftGraph.Model.WindowsInformationProtectionEnterpriseProxiedDomainsInner
    )
    |> Deserializer.deserialize(
      :enterpriseProxyServers,
      :list,
      MicrosoftGraph.Model.WindowsInformationProtectionEnterpriseInternalProxyServersInner
    )
    |> Deserializer.deserialize(
      :exemptAppLockerFiles,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphWindowsInformationProtectionAppLockerFile
    )
    |> Deserializer.deserialize(
      :exemptApps,
      :list,
      MicrosoftGraph.Model.WindowsInformationProtectionExemptAppsInner
    )
    |> Deserializer.deserialize(
      :neutralDomainResources,
      :list,
      MicrosoftGraph.Model.WindowsInformationProtectionEnterpriseInternalProxyServersInner
    )
    |> Deserializer.deserialize(
      :protectedAppLockerFiles,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphWindowsInformationProtectionAppLockerFile
    )
    |> Deserializer.deserialize(
      :protectedApps,
      :list,
      MicrosoftGraph.Model.WindowsInformationProtectionExemptAppsInner
    )
    |> Deserializer.deserialize(
      :smbAutoEncryptedFileExtensions,
      :list,
      MicrosoftGraph.Model.WindowsInformationProtectionEnterpriseInternalProxyServersInner
    )
    |> Deserializer.deserialize(
      :pinLowercaseLetters,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphWindowsInformationProtectionPinCharacterRequirements
    )
    |> Deserializer.deserialize(
      :pinSpecialCharacters,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphWindowsInformationProtectionPinCharacterRequirements
    )
    |> Deserializer.deserialize(
      :pinUppercaseLetters,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphWindowsInformationProtectionPinCharacterRequirements
    )
  end
end
