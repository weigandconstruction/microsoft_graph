# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphIosGeneralDeviceConfiguration do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :assignments,
    :createdDateTime,
    :description,
    :deviceSettingStateSummaries,
    :deviceStatusOverview,
    :deviceStatuses,
    :displayName,
    :lastModifiedDateTime,
    :userStatusOverview,
    :userStatuses,
    :version,
    :passcodeMinutesOfInactivityBeforeScreenTimeout,
    :notificationsBlockSettingsModification,
    :appsVisibilityListType,
    :safariBlockJavaScript,
    :wallpaperBlockModification,
    :faceTimeBlocked,
    :iTunesBlockRadio,
    :passcodeBlockSimple,
    :cellularBlockPersonalHotspot,
    :appStoreRequirePassword,
    :mediaContentRatingNewZealand,
    :airPlayForcePairingPasswordForOutgoingRequests,
    :activationLockAllowWhenSupervised,
    :kioskModeRequireColorInversion,
    :compliantAppListType,
    :appleWatchBlockPairing,
    :keyboardBlockShortcuts,
    :safariManagedDomains,
    :lockScreenBlockControlCenter,
    :appleWatchForceWristDetection,
    :configurationProfileBlockChanges,
    :compliantAppsList,
    :iCloudBlockDocumentSync,
    :safariPasswordAutoFillDomains,
    :iCloudBlockBackup,
    :kioskModeAllowVolumeButtons,
    :kioskModeAllowTouchscreen,
    :deviceBlockEnableRestrictions,
    :kioskModeBuiltInAppId,
    :mediaContentRatingIreland,
    :spotlightBlockInternetResults,
    :mediaContentRatingJapan,
    :passcodeExpirationDays,
    :safariBlockPopups,
    :passcodeRequiredType,
    :diagnosticDataBlockSubmission,
    :definitionLookupBlocked,
    :mediaContentRatingUnitedStates,
    :bluetoothBlockModification,
    :mediaContentRatingCanada,
    :mediaContentRatingFrance,
    :kioskModeAllowScreenRotation,
    :keyboardBlockAutoCorrect,
    :diagnosticDataBlockSubmissionModification,
    :gamingBlockGameCenterFriends,
    :mediaContentRatingUnitedKingdom,
    :iCloudBlockActivityContinuation,
    :messagesBlocked,
    :voiceDialingBlocked,
    :cellularBlockDataRoaming,
    :gamingBlockMultiplayer,
    :passcodePreviousPasscodeBlockCount,
    :findMyFriendsBlocked,
    :iBooksStoreBlocked,
    :mediaContentRatingGermany,
    :safariBlockAutofill,
    :kioskModeAppStoreUrl,
    :appleNewsBlocked,
    :iCloudBlockPhotoStreamSync,
    :appsVisibilityList,
    :appStoreBlockInAppPurchases,
    :kioskModeAllowAssistiveTouchSettings,
    :iTunesBlockMusicService,
    :podcastsBlocked,
    :keyboardBlockSpellCheck,
    :lockScreenBlockNotificationView,
    :classroomAppForceUnpromptedScreenObservation,
    :appStoreBlocked,
    :iTunesBlockExplicitContent,
    :passcodeBlockFingerprintModification,
    :passcodeSignInFailureCountBeforeWipe,
    :classroomAppBlockRemoteScreenObservation,
    :appsSingleAppModeList,
    :certificatesBlockUntrustedTlsCertificates,
    :documentsBlockUnmanagedDocumentsInManagedApps,
    :iCloudBlockPhotoLibrary,
    :deviceBlockEraseContentAndSettings,
    :kioskModeRequireAssistiveTouch,
    :safariRequireFraudWarning,
    :enterpriseAppBlockTrust,
    :airDropBlocked,
    :kioskModeAllowVoiceOverSettings,
    :siriBlockUserGeneratedContent,
    :kioskModeAllowColorInversionSettings,
    :emailInDomainSuffixes,
    :appStoreBlockUIAppInstallation,
    :kioskModeManagedAppId,
    :mediaContentRatingAustralia,
    :iBooksStoreBlockErotica,
    :siriBlocked,
    :cellularBlockVoiceRoaming,
    :safariCookieSettings,
    :lockScreenBlockPassbook,
    :wiFiConnectOnlyToConfiguredNetworks,
    :iCloudBlockManagedAppsSync,
    :screenCaptureBlocked,
    :kioskModeRequireZoom,
    :appStoreBlockAutomaticDownloads,
    :passcodeMinutesOfInactivityBeforeLock,
    :siriBlockedWhenLocked,
    :cellularBlockPerAppDataModification,
    :keyboardBlockPredictive,
    :enterpriseAppBlockTrustModification,
    :passcodeMinimumCharacterSetCount,
    :gameCenterBlocked,
    :networkUsageRules,
    :kioskModeRequireMonoAudio,
    :passcodeMinimumLength,
    :deviceBlockNameModification,
    :kioskModeRequireVoiceOver,
    :cellularBlockGlobalBackgroundFetchWhileRoaming,
    :accountBlockModification,
    :kioskModeAllowAssistiveSpeak,
    :siriRequireProfanityFilter,
    :documentsBlockManagedDocumentsInUnmanagedApps,
    :airDropForceUnmanagedDropTarget,
    :kioskModeAllowZoomSettings,
    :cameraBlocked,
    :safariBlocked,
    :iCloudBlockSharedPhotoStream,
    :hostPairingBlocked,
    :keyboardBlockDictation,
    :lockScreenBlockTodayView,
    :passcodeBlockModification,
    :kioskModeAllowRingerSwitch,
    :iCloudRequireEncryptedBackup,
    :mediaContentRatingApps,
    :passcodeBlockFingerprintUnlock,
    :passcodeRequired,
    :kioskModeAllowAutoLock,
    :kioskModeAllowSleepButton
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :assignments =>
            [MicrosoftGraph.Model.MicrosoftGraphDeviceConfigurationAssignment.t()] | nil,
          :createdDateTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :deviceSettingStateSummaries =>
            [MicrosoftGraph.Model.MicrosoftGraphSettingStateDeviceSummary.t()] | nil,
          :deviceStatusOverview =>
            MicrosoftGraph.Model.DeviceConfigurationDeviceStatusOverview.t() | nil,
          :deviceStatuses =>
            [MicrosoftGraph.Model.MicrosoftGraphDeviceConfigurationDeviceStatus.t()] | nil,
          :displayName => String.t() | nil,
          :lastModifiedDateTime => DateTime.t() | nil,
          :userStatusOverview =>
            MicrosoftGraph.Model.DeviceConfigurationUserStatusOverview.t() | nil,
          :userStatuses =>
            [MicrosoftGraph.Model.MicrosoftGraphDeviceConfigurationUserStatus.t()] | nil,
          :version => integer() | nil,
          :passcodeMinutesOfInactivityBeforeScreenTimeout => integer() | nil,
          :notificationsBlockSettingsModification => boolean() | nil,
          :appsVisibilityListType => MicrosoftGraph.Model.MicrosoftGraphAppListType.t() | nil,
          :safariBlockJavaScript => boolean() | nil,
          :wallpaperBlockModification => boolean() | nil,
          :faceTimeBlocked => boolean() | nil,
          :iTunesBlockRadio => boolean() | nil,
          :passcodeBlockSimple => boolean() | nil,
          :cellularBlockPersonalHotspot => boolean() | nil,
          :appStoreRequirePassword => boolean() | nil,
          :mediaContentRatingNewZealand =>
            MicrosoftGraph.Model.IosGeneralDeviceConfigurationMediaContentRatingNewZealand.t()
            | nil,
          :airPlayForcePairingPasswordForOutgoingRequests => boolean() | nil,
          :activationLockAllowWhenSupervised => boolean() | nil,
          :kioskModeRequireColorInversion => boolean() | nil,
          :compliantAppListType => MicrosoftGraph.Model.MicrosoftGraphAppListType.t() | nil,
          :appleWatchBlockPairing => boolean() | nil,
          :keyboardBlockShortcuts => boolean() | nil,
          :safariManagedDomains => [String.t()] | nil,
          :lockScreenBlockControlCenter => boolean() | nil,
          :appleWatchForceWristDetection => boolean() | nil,
          :configurationProfileBlockChanges => boolean() | nil,
          :compliantAppsList =>
            [MicrosoftGraph.Model.MicrosoftGraphIosNetworkUsageRuleManagedAppsInner.t()] | nil,
          :iCloudBlockDocumentSync => boolean() | nil,
          :safariPasswordAutoFillDomains => [String.t()] | nil,
          :iCloudBlockBackup => boolean() | nil,
          :kioskModeAllowVolumeButtons => boolean() | nil,
          :kioskModeAllowTouchscreen => boolean() | nil,
          :deviceBlockEnableRestrictions => boolean() | nil,
          :kioskModeBuiltInAppId => String.t() | nil,
          :mediaContentRatingIreland =>
            MicrosoftGraph.Model.IosGeneralDeviceConfigurationMediaContentRatingIreland.t() | nil,
          :spotlightBlockInternetResults => boolean() | nil,
          :mediaContentRatingJapan =>
            MicrosoftGraph.Model.IosGeneralDeviceConfigurationMediaContentRatingJapan.t() | nil,
          :passcodeExpirationDays => integer() | nil,
          :safariBlockPopups => boolean() | nil,
          :passcodeRequiredType =>
            MicrosoftGraph.Model.MicrosoftGraphRequiredPasswordType.t() | nil,
          :diagnosticDataBlockSubmission => boolean() | nil,
          :definitionLookupBlocked => boolean() | nil,
          :mediaContentRatingUnitedStates =>
            MicrosoftGraph.Model.IosGeneralDeviceConfigurationMediaContentRatingUnitedStates.t()
            | nil,
          :bluetoothBlockModification => boolean() | nil,
          :mediaContentRatingCanada =>
            MicrosoftGraph.Model.IosGeneralDeviceConfigurationMediaContentRatingCanada.t() | nil,
          :mediaContentRatingFrance =>
            MicrosoftGraph.Model.IosGeneralDeviceConfigurationMediaContentRatingFrance.t() | nil,
          :kioskModeAllowScreenRotation => boolean() | nil,
          :keyboardBlockAutoCorrect => boolean() | nil,
          :diagnosticDataBlockSubmissionModification => boolean() | nil,
          :gamingBlockGameCenterFriends => boolean() | nil,
          :mediaContentRatingUnitedKingdom =>
            MicrosoftGraph.Model.IosGeneralDeviceConfigurationMediaContentRatingUnitedKingdom.t()
            | nil,
          :iCloudBlockActivityContinuation => boolean() | nil,
          :messagesBlocked => boolean() | nil,
          :voiceDialingBlocked => boolean() | nil,
          :cellularBlockDataRoaming => boolean() | nil,
          :gamingBlockMultiplayer => boolean() | nil,
          :passcodePreviousPasscodeBlockCount => integer() | nil,
          :findMyFriendsBlocked => boolean() | nil,
          :iBooksStoreBlocked => boolean() | nil,
          :mediaContentRatingGermany =>
            MicrosoftGraph.Model.IosGeneralDeviceConfigurationMediaContentRatingGermany.t() | nil,
          :safariBlockAutofill => boolean() | nil,
          :kioskModeAppStoreUrl => String.t() | nil,
          :appleNewsBlocked => boolean() | nil,
          :iCloudBlockPhotoStreamSync => boolean() | nil,
          :appsVisibilityList =>
            [MicrosoftGraph.Model.MicrosoftGraphIosNetworkUsageRuleManagedAppsInner.t()] | nil,
          :appStoreBlockInAppPurchases => boolean() | nil,
          :kioskModeAllowAssistiveTouchSettings => boolean() | nil,
          :iTunesBlockMusicService => boolean() | nil,
          :podcastsBlocked => boolean() | nil,
          :keyboardBlockSpellCheck => boolean() | nil,
          :lockScreenBlockNotificationView => boolean() | nil,
          :classroomAppForceUnpromptedScreenObservation => boolean() | nil,
          :appStoreBlocked => boolean() | nil,
          :iTunesBlockExplicitContent => boolean() | nil,
          :passcodeBlockFingerprintModification => boolean() | nil,
          :passcodeSignInFailureCountBeforeWipe => integer() | nil,
          :classroomAppBlockRemoteScreenObservation => boolean() | nil,
          :appsSingleAppModeList =>
            [MicrosoftGraph.Model.MicrosoftGraphIosNetworkUsageRuleManagedAppsInner.t()] | nil,
          :certificatesBlockUntrustedTlsCertificates => boolean() | nil,
          :documentsBlockUnmanagedDocumentsInManagedApps => boolean() | nil,
          :iCloudBlockPhotoLibrary => boolean() | nil,
          :deviceBlockEraseContentAndSettings => boolean() | nil,
          :kioskModeRequireAssistiveTouch => boolean() | nil,
          :safariRequireFraudWarning => boolean() | nil,
          :enterpriseAppBlockTrust => boolean() | nil,
          :airDropBlocked => boolean() | nil,
          :kioskModeAllowVoiceOverSettings => boolean() | nil,
          :siriBlockUserGeneratedContent => boolean() | nil,
          :kioskModeAllowColorInversionSettings => boolean() | nil,
          :emailInDomainSuffixes => [String.t()] | nil,
          :appStoreBlockUIAppInstallation => boolean() | nil,
          :kioskModeManagedAppId => String.t() | nil,
          :mediaContentRatingAustralia =>
            MicrosoftGraph.Model.IosGeneralDeviceConfigurationMediaContentRatingAustralia.t()
            | nil,
          :iBooksStoreBlockErotica => boolean() | nil,
          :siriBlocked => boolean() | nil,
          :cellularBlockVoiceRoaming => boolean() | nil,
          :safariCookieSettings =>
            MicrosoftGraph.Model.MicrosoftGraphWebBrowserCookieSettings.t() | nil,
          :lockScreenBlockPassbook => boolean() | nil,
          :wiFiConnectOnlyToConfiguredNetworks => boolean() | nil,
          :iCloudBlockManagedAppsSync => boolean() | nil,
          :screenCaptureBlocked => boolean() | nil,
          :kioskModeRequireZoom => boolean() | nil,
          :appStoreBlockAutomaticDownloads => boolean() | nil,
          :passcodeMinutesOfInactivityBeforeLock => integer() | nil,
          :siriBlockedWhenLocked => boolean() | nil,
          :cellularBlockPerAppDataModification => boolean() | nil,
          :keyboardBlockPredictive => boolean() | nil,
          :enterpriseAppBlockTrustModification => boolean() | nil,
          :passcodeMinimumCharacterSetCount => integer() | nil,
          :gameCenterBlocked => boolean() | nil,
          :networkUsageRules =>
            [MicrosoftGraph.Model.IosGeneralDeviceConfigurationNetworkUsageRulesInner.t()] | nil,
          :kioskModeRequireMonoAudio => boolean() | nil,
          :passcodeMinimumLength => integer() | nil,
          :deviceBlockNameModification => boolean() | nil,
          :kioskModeRequireVoiceOver => boolean() | nil,
          :cellularBlockGlobalBackgroundFetchWhileRoaming => boolean() | nil,
          :accountBlockModification => boolean() | nil,
          :kioskModeAllowAssistiveSpeak => boolean() | nil,
          :siriRequireProfanityFilter => boolean() | nil,
          :documentsBlockManagedDocumentsInUnmanagedApps => boolean() | nil,
          :airDropForceUnmanagedDropTarget => boolean() | nil,
          :kioskModeAllowZoomSettings => boolean() | nil,
          :cameraBlocked => boolean() | nil,
          :safariBlocked => boolean() | nil,
          :iCloudBlockSharedPhotoStream => boolean() | nil,
          :hostPairingBlocked => boolean() | nil,
          :keyboardBlockDictation => boolean() | nil,
          :lockScreenBlockTodayView => boolean() | nil,
          :passcodeBlockModification => boolean() | nil,
          :kioskModeAllowRingerSwitch => boolean() | nil,
          :iCloudRequireEncryptedBackup => boolean() | nil,
          :mediaContentRatingApps => MicrosoftGraph.Model.MicrosoftGraphRatingAppsType.t() | nil,
          :passcodeBlockFingerprintUnlock => boolean() | nil,
          :passcodeRequired => boolean() | nil,
          :kioskModeAllowAutoLock => boolean() | nil,
          :kioskModeAllowSleepButton => boolean() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :assignments,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphDeviceConfigurationAssignment
    )
    |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :deviceSettingStateSummaries,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphSettingStateDeviceSummary
    )
    |> Deserializer.deserialize(
      :deviceStatusOverview,
      :struct,
      MicrosoftGraph.Model.DeviceConfigurationDeviceStatusOverview
    )
    |> Deserializer.deserialize(
      :deviceStatuses,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphDeviceConfigurationDeviceStatus
    )
    |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :userStatusOverview,
      :struct,
      MicrosoftGraph.Model.DeviceConfigurationUserStatusOverview
    )
    |> Deserializer.deserialize(
      :userStatuses,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphDeviceConfigurationUserStatus
    )
    |> Deserializer.deserialize(
      :appsVisibilityListType,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphAppListType
    )
    |> Deserializer.deserialize(
      :mediaContentRatingNewZealand,
      :struct,
      MicrosoftGraph.Model.IosGeneralDeviceConfigurationMediaContentRatingNewZealand
    )
    |> Deserializer.deserialize(
      :compliantAppListType,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphAppListType
    )
    |> Deserializer.deserialize(
      :compliantAppsList,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphIosNetworkUsageRuleManagedAppsInner
    )
    |> Deserializer.deserialize(
      :mediaContentRatingIreland,
      :struct,
      MicrosoftGraph.Model.IosGeneralDeviceConfigurationMediaContentRatingIreland
    )
    |> Deserializer.deserialize(
      :mediaContentRatingJapan,
      :struct,
      MicrosoftGraph.Model.IosGeneralDeviceConfigurationMediaContentRatingJapan
    )
    |> Deserializer.deserialize(
      :passcodeRequiredType,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphRequiredPasswordType
    )
    |> Deserializer.deserialize(
      :mediaContentRatingUnitedStates,
      :struct,
      MicrosoftGraph.Model.IosGeneralDeviceConfigurationMediaContentRatingUnitedStates
    )
    |> Deserializer.deserialize(
      :mediaContentRatingCanada,
      :struct,
      MicrosoftGraph.Model.IosGeneralDeviceConfigurationMediaContentRatingCanada
    )
    |> Deserializer.deserialize(
      :mediaContentRatingFrance,
      :struct,
      MicrosoftGraph.Model.IosGeneralDeviceConfigurationMediaContentRatingFrance
    )
    |> Deserializer.deserialize(
      :mediaContentRatingUnitedKingdom,
      :struct,
      MicrosoftGraph.Model.IosGeneralDeviceConfigurationMediaContentRatingUnitedKingdom
    )
    |> Deserializer.deserialize(
      :mediaContentRatingGermany,
      :struct,
      MicrosoftGraph.Model.IosGeneralDeviceConfigurationMediaContentRatingGermany
    )
    |> Deserializer.deserialize(
      :appsVisibilityList,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphIosNetworkUsageRuleManagedAppsInner
    )
    |> Deserializer.deserialize(
      :appsSingleAppModeList,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphIosNetworkUsageRuleManagedAppsInner
    )
    |> Deserializer.deserialize(
      :mediaContentRatingAustralia,
      :struct,
      MicrosoftGraph.Model.IosGeneralDeviceConfigurationMediaContentRatingAustralia
    )
    |> Deserializer.deserialize(
      :safariCookieSettings,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphWebBrowserCookieSettings
    )
    |> Deserializer.deserialize(
      :networkUsageRules,
      :list,
      MicrosoftGraph.Model.IosGeneralDeviceConfigurationNetworkUsageRulesInner
    )
    |> Deserializer.deserialize(
      :mediaContentRatingApps,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphRatingAppsType
    )
  end
end
