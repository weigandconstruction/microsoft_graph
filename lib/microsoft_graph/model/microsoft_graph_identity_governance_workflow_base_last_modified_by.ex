# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphIdentityGovernanceWorkflowBaseLastModifiedBy do
  @moduledoc """
  The unique identifier of the Microsoft Entra identity that last modified the workflow.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :deletedDateTime,
    :authorizationInfo,
    :jobTitle,
    :schools,
    :contacts,
    :aboutMe,
    :customSecurityAttributes,
    :deviceManagementTroubleshootingEvents,
    :isResourceAccount,
    :joinedTeams,
    :mySite,
    :responsibilities,
    :outlook,
    :faxNumber,
    :calendars,
    :businessPhones,
    :passwordPolicies,
    :calendarView,
    :agreementAcceptances,
    :managedAppRegistrations,
    :accountEnabled,
    :onPremisesExtensionAttributes,
    :licenseDetails,
    :photos,
    :calendarGroups,
    :onPremisesDistinguishedName,
    :city,
    :provisionedPlans,
    :messages,
    :mailboxSettings,
    :followedSites,
    :employeeLeaveDateTime,
    :streetAddress,
    :extensions,
    :ownedObjects,
    :onlineMeetings,
    :employeeId,
    :inferenceClassification,
    :directReports,
    :signInActivity,
    :onPremisesSamAccountName,
    :pastProjects,
    :employeeOrgData,
    :appRoleAssignments,
    :assignedLicenses,
    :createdObjects,
    :givenName,
    :insights,
    :securityIdentifier,
    :creationType,
    :managedDevices,
    :onPremisesSecurityIdentifier,
    :authentication,
    :mail,
    :settings,
    :officeLocation,
    :drives,
    :planner,
    :onPremisesDomainName,
    :externalUserStateChangeDateTime,
    :deviceEnrollmentLimit,
    :scopedRoleMemberOf,
    :onPremisesProvisioningErrors,
    :assignedPlans,
    :department,
    :mailFolders,
    :legalAgeGroupClassification,
    :oauth2PermissionGrants,
    :passwordProfile,
    :signInSessionsValidFromDateTime,
    :onPremisesSyncEnabled,
    :skills,
    :events,
    :mailNickname,
    :teamwork,
    :preferredName,
    :todo,
    :people,
    :userType,
    :showInAddressList,
    :mobilePhone,
    :ownedDevices,
    :lastPasswordChangeDateTime,
    :memberOf,
    :consentProvidedForMinor,
    :activities,
    :registeredDevices,
    :presence,
    :country,
    :companyName,
    :manager,
    :userPrincipalName,
    :proxyAddresses,
    :displayName,
    :onPremisesLastSyncDateTime,
    :birthday,
    :transitiveMemberOf,
    :serviceProvisioningErrors,
    :preferredLanguage,
    :drive,
    :otherMails,
    :employeeHireDate,
    :contactFolders,
    :onPremisesUserPrincipalName,
    :postalCode,
    :onenote,
    :surname,
    :onPremisesImmutableId,
    :usageLocation,
    :imAddresses,
    :interests,
    :hireDate,
    :calendar,
    :chats,
    :employeeType,
    :createdDateTime,
    :externalUserState,
    :employeeExperience,
    :identities,
    :ageGroup,
    :state,
    :print,
    :preferredDataLocation,
    :photo,
    :licenseAssignmentStates
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :deletedDateTime => DateTime.t | nil,
    :authorizationInfo => MicrosoftGraph.Model.UserAuthorizationInfo.t | nil,
    :jobTitle => String.t | nil,
    :schools => [String.t] | nil,
    :contacts => [MicrosoftGraph.Model.MicrosoftGraphContact.t] | nil,
    :aboutMe => String.t | nil,
    :customSecurityAttributes => MicrosoftGraph.Model.UserCustomSecurityAttributes.t | nil,
    :deviceManagementTroubleshootingEvents => [MicrosoftGraph.Model.MicrosoftGraphDeviceManagementTroubleshootingEvent.t] | nil,
    :isResourceAccount => boolean() | nil,
    :joinedTeams => [MicrosoftGraph.Model.MicrosoftGraphTeam.t] | nil,
    :mySite => String.t | nil,
    :responsibilities => [String.t] | nil,
    :outlook => MicrosoftGraph.Model.UserOutlook.t | nil,
    :faxNumber => String.t | nil,
    :calendars => [MicrosoftGraph.Model.MicrosoftGraphCalendar.t] | nil,
    :businessPhones => [String.t] | nil,
    :passwordPolicies => String.t | nil,
    :calendarView => [MicrosoftGraph.Model.MicrosoftGraphEvent.t] | nil,
    :agreementAcceptances => [MicrosoftGraph.Model.MicrosoftGraphAgreementAcceptance.t] | nil,
    :managedAppRegistrations => [MicrosoftGraph.Model.MicrosoftGraphManagedAppRegistration.t] | nil,
    :accountEnabled => boolean() | nil,
    :onPremisesExtensionAttributes => MicrosoftGraph.Model.UserOnPremisesExtensionAttributes.t | nil,
    :licenseDetails => [MicrosoftGraph.Model.MicrosoftGraphLicenseDetails.t] | nil,
    :photos => [MicrosoftGraph.Model.MicrosoftGraphProfilePhoto.t] | nil,
    :calendarGroups => [MicrosoftGraph.Model.MicrosoftGraphCalendarGroup.t] | nil,
    :onPremisesDistinguishedName => String.t | nil,
    :city => String.t | nil,
    :provisionedPlans => [MicrosoftGraph.Model.MicrosoftGraphProvisionedPlan.t] | nil,
    :messages => [MicrosoftGraph.Model.MicrosoftGraphMessage.t] | nil,
    :mailboxSettings => MicrosoftGraph.Model.UserMailboxSettings.t | nil,
    :followedSites => [MicrosoftGraph.Model.MicrosoftGraphSite.t] | nil,
    :employeeLeaveDateTime => DateTime.t | nil,
    :streetAddress => String.t | nil,
    :extensions => [MicrosoftGraph.Model.MicrosoftGraphExtension.t] | nil,
    :ownedObjects => [MicrosoftGraph.Model.MicrosoftGraphDirectoryObject.t] | nil,
    :onlineMeetings => [MicrosoftGraph.Model.MicrosoftGraphOnlineMeeting.t] | nil,
    :employeeId => String.t | nil,
    :inferenceClassification => MicrosoftGraph.Model.UserInferenceClassification.t | nil,
    :directReports => [MicrosoftGraph.Model.MicrosoftGraphDirectoryObject.t] | nil,
    :signInActivity => MicrosoftGraph.Model.UserSignInActivity.t | nil,
    :onPremisesSamAccountName => String.t | nil,
    :pastProjects => [String.t] | nil,
    :employeeOrgData => MicrosoftGraph.Model.UserEmployeeOrgData.t | nil,
    :appRoleAssignments => [MicrosoftGraph.Model.MicrosoftGraphAppRoleAssignment.t] | nil,
    :assignedLicenses => [MicrosoftGraph.Model.MicrosoftGraphAssignedLicense.t] | nil,
    :createdObjects => [MicrosoftGraph.Model.MicrosoftGraphDirectoryObject.t] | nil,
    :givenName => String.t | nil,
    :insights => MicrosoftGraph.Model.UserInsights.t | nil,
    :securityIdentifier => String.t | nil,
    :creationType => String.t | nil,
    :managedDevices => [MicrosoftGraph.Model.MicrosoftGraphManagedDevice.t] | nil,
    :onPremisesSecurityIdentifier => String.t | nil,
    :authentication => MicrosoftGraph.Model.UserAuthentication.t | nil,
    :mail => String.t | nil,
    :settings => MicrosoftGraph.Model.UserSettings.t | nil,
    :officeLocation => String.t | nil,
    :drives => [MicrosoftGraph.Model.MicrosoftGraphDrive.t] | nil,
    :planner => MicrosoftGraph.Model.UserPlanner.t | nil,
    :onPremisesDomainName => String.t | nil,
    :externalUserStateChangeDateTime => DateTime.t | nil,
    :deviceEnrollmentLimit => integer() | nil,
    :scopedRoleMemberOf => [MicrosoftGraph.Model.MicrosoftGraphScopedRoleMembership.t] | nil,
    :onPremisesProvisioningErrors => [MicrosoftGraph.Model.OrgContactOnPremisesProvisioningErrorsInner.t] | nil,
    :assignedPlans => [MicrosoftGraph.Model.MicrosoftGraphAssignedPlan.t] | nil,
    :department => String.t | nil,
    :mailFolders => [MicrosoftGraph.Model.MicrosoftGraphMailFolder.t] | nil,
    :legalAgeGroupClassification => String.t | nil,
    :oauth2PermissionGrants => [MicrosoftGraph.Model.MicrosoftGraphOAuth2PermissionGrant.t] | nil,
    :passwordProfile => MicrosoftGraph.Model.UserPasswordProfile.t | nil,
    :signInSessionsValidFromDateTime => DateTime.t | nil,
    :onPremisesSyncEnabled => boolean() | nil,
    :skills => [String.t] | nil,
    :events => [MicrosoftGraph.Model.MicrosoftGraphEvent.t] | nil,
    :mailNickname => String.t | nil,
    :teamwork => MicrosoftGraph.Model.UserTeamwork.t | nil,
    :preferredName => String.t | nil,
    :todo => MicrosoftGraph.Model.UserTodo.t | nil,
    :people => [MicrosoftGraph.Model.MicrosoftGraphPerson.t] | nil,
    :userType => String.t | nil,
    :showInAddressList => boolean() | nil,
    :mobilePhone => String.t | nil,
    :ownedDevices => [MicrosoftGraph.Model.MicrosoftGraphDirectoryObject.t] | nil,
    :lastPasswordChangeDateTime => DateTime.t | nil,
    :memberOf => [MicrosoftGraph.Model.MicrosoftGraphDirectoryObject.t] | nil,
    :consentProvidedForMinor => String.t | nil,
    :activities => [MicrosoftGraph.Model.MicrosoftGraphUserActivity.t] | nil,
    :registeredDevices => [MicrosoftGraph.Model.MicrosoftGraphDirectoryObject.t] | nil,
    :presence => MicrosoftGraph.Model.UserPresence.t | nil,
    :country => String.t | nil,
    :companyName => String.t | nil,
    :manager => MicrosoftGraph.Model.UserManager.t | nil,
    :userPrincipalName => String.t | nil,
    :proxyAddresses => [String.t] | nil,
    :displayName => String.t | nil,
    :onPremisesLastSyncDateTime => DateTime.t | nil,
    :birthday => DateTime.t | nil,
    :transitiveMemberOf => [MicrosoftGraph.Model.MicrosoftGraphDirectoryObject.t] | nil,
    :serviceProvisioningErrors => [MicrosoftGraph.Model.OrgContactServiceProvisioningErrorsInner.t] | nil,
    :preferredLanguage => String.t | nil,
    :drive => MicrosoftGraph.Model.UserDrive.t | nil,
    :otherMails => [String.t] | nil,
    :employeeHireDate => DateTime.t | nil,
    :contactFolders => [MicrosoftGraph.Model.MicrosoftGraphContactFolder.t] | nil,
    :onPremisesUserPrincipalName => String.t | nil,
    :postalCode => String.t | nil,
    :onenote => MicrosoftGraph.Model.UserOnenote.t | nil,
    :surname => String.t | nil,
    :onPremisesImmutableId => String.t | nil,
    :usageLocation => String.t | nil,
    :imAddresses => [String.t] | nil,
    :interests => [String.t] | nil,
    :hireDate => DateTime.t | nil,
    :calendar => MicrosoftGraph.Model.UserCalendar.t | nil,
    :chats => [MicrosoftGraph.Model.MicrosoftGraphChat.t] | nil,
    :employeeType => String.t | nil,
    :createdDateTime => DateTime.t | nil,
    :externalUserState => String.t | nil,
    :employeeExperience => MicrosoftGraph.Model.UserEmployeeExperience.t | nil,
    :identities => [MicrosoftGraph.Model.UserIdentitiesInner.t] | nil,
    :ageGroup => String.t | nil,
    :state => String.t | nil,
    :print => MicrosoftGraph.Model.UserPrint.t | nil,
    :preferredDataLocation => String.t | nil,
    :photo => MicrosoftGraph.Model.UserPhoto.t | nil,
    :licenseAssignmentStates => [MicrosoftGraph.Model.UserLicenseAssignmentStatesInner.t] | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:deletedDateTime, :datetime, nil)
     |> Deserializer.deserialize(:authorizationInfo, :struct, MicrosoftGraph.Model.UserAuthorizationInfo)
     |> Deserializer.deserialize(:contacts, :list, MicrosoftGraph.Model.MicrosoftGraphContact)
     |> Deserializer.deserialize(:customSecurityAttributes, :struct, MicrosoftGraph.Model.UserCustomSecurityAttributes)
     |> Deserializer.deserialize(:deviceManagementTroubleshootingEvents, :list, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementTroubleshootingEvent)
     |> Deserializer.deserialize(:joinedTeams, :list, MicrosoftGraph.Model.MicrosoftGraphTeam)
     |> Deserializer.deserialize(:outlook, :struct, MicrosoftGraph.Model.UserOutlook)
     |> Deserializer.deserialize(:calendars, :list, MicrosoftGraph.Model.MicrosoftGraphCalendar)
     |> Deserializer.deserialize(:calendarView, :list, MicrosoftGraph.Model.MicrosoftGraphEvent)
     |> Deserializer.deserialize(:agreementAcceptances, :list, MicrosoftGraph.Model.MicrosoftGraphAgreementAcceptance)
     |> Deserializer.deserialize(:managedAppRegistrations, :list, MicrosoftGraph.Model.MicrosoftGraphManagedAppRegistration)
     |> Deserializer.deserialize(:onPremisesExtensionAttributes, :struct, MicrosoftGraph.Model.UserOnPremisesExtensionAttributes)
     |> Deserializer.deserialize(:licenseDetails, :list, MicrosoftGraph.Model.MicrosoftGraphLicenseDetails)
     |> Deserializer.deserialize(:photos, :list, MicrosoftGraph.Model.MicrosoftGraphProfilePhoto)
     |> Deserializer.deserialize(:calendarGroups, :list, MicrosoftGraph.Model.MicrosoftGraphCalendarGroup)
     |> Deserializer.deserialize(:provisionedPlans, :list, MicrosoftGraph.Model.MicrosoftGraphProvisionedPlan)
     |> Deserializer.deserialize(:messages, :list, MicrosoftGraph.Model.MicrosoftGraphMessage)
     |> Deserializer.deserialize(:mailboxSettings, :struct, MicrosoftGraph.Model.UserMailboxSettings)
     |> Deserializer.deserialize(:followedSites, :list, MicrosoftGraph.Model.MicrosoftGraphSite)
     |> Deserializer.deserialize(:employeeLeaveDateTime, :datetime, nil)
     |> Deserializer.deserialize(:extensions, :list, MicrosoftGraph.Model.MicrosoftGraphExtension)
     |> Deserializer.deserialize(:ownedObjects, :list, MicrosoftGraph.Model.MicrosoftGraphDirectoryObject)
     |> Deserializer.deserialize(:onlineMeetings, :list, MicrosoftGraph.Model.MicrosoftGraphOnlineMeeting)
     |> Deserializer.deserialize(:inferenceClassification, :struct, MicrosoftGraph.Model.UserInferenceClassification)
     |> Deserializer.deserialize(:directReports, :list, MicrosoftGraph.Model.MicrosoftGraphDirectoryObject)
     |> Deserializer.deserialize(:signInActivity, :struct, MicrosoftGraph.Model.UserSignInActivity)
     |> Deserializer.deserialize(:employeeOrgData, :struct, MicrosoftGraph.Model.UserEmployeeOrgData)
     |> Deserializer.deserialize(:appRoleAssignments, :list, MicrosoftGraph.Model.MicrosoftGraphAppRoleAssignment)
     |> Deserializer.deserialize(:assignedLicenses, :list, MicrosoftGraph.Model.MicrosoftGraphAssignedLicense)
     |> Deserializer.deserialize(:createdObjects, :list, MicrosoftGraph.Model.MicrosoftGraphDirectoryObject)
     |> Deserializer.deserialize(:insights, :struct, MicrosoftGraph.Model.UserInsights)
     |> Deserializer.deserialize(:managedDevices, :list, MicrosoftGraph.Model.MicrosoftGraphManagedDevice)
     |> Deserializer.deserialize(:authentication, :struct, MicrosoftGraph.Model.UserAuthentication)
     |> Deserializer.deserialize(:settings, :struct, MicrosoftGraph.Model.UserSettings)
     |> Deserializer.deserialize(:drives, :list, MicrosoftGraph.Model.MicrosoftGraphDrive)
     |> Deserializer.deserialize(:planner, :struct, MicrosoftGraph.Model.UserPlanner)
     |> Deserializer.deserialize(:externalUserStateChangeDateTime, :datetime, nil)
     |> Deserializer.deserialize(:scopedRoleMemberOf, :list, MicrosoftGraph.Model.MicrosoftGraphScopedRoleMembership)
     |> Deserializer.deserialize(:onPremisesProvisioningErrors, :list, MicrosoftGraph.Model.OrgContactOnPremisesProvisioningErrorsInner)
     |> Deserializer.deserialize(:assignedPlans, :list, MicrosoftGraph.Model.MicrosoftGraphAssignedPlan)
     |> Deserializer.deserialize(:mailFolders, :list, MicrosoftGraph.Model.MicrosoftGraphMailFolder)
     |> Deserializer.deserialize(:oauth2PermissionGrants, :list, MicrosoftGraph.Model.MicrosoftGraphOAuth2PermissionGrant)
     |> Deserializer.deserialize(:passwordProfile, :struct, MicrosoftGraph.Model.UserPasswordProfile)
     |> Deserializer.deserialize(:signInSessionsValidFromDateTime, :datetime, nil)
     |> Deserializer.deserialize(:events, :list, MicrosoftGraph.Model.MicrosoftGraphEvent)
     |> Deserializer.deserialize(:teamwork, :struct, MicrosoftGraph.Model.UserTeamwork)
     |> Deserializer.deserialize(:todo, :struct, MicrosoftGraph.Model.UserTodo)
     |> Deserializer.deserialize(:people, :list, MicrosoftGraph.Model.MicrosoftGraphPerson)
     |> Deserializer.deserialize(:ownedDevices, :list, MicrosoftGraph.Model.MicrosoftGraphDirectoryObject)
     |> Deserializer.deserialize(:lastPasswordChangeDateTime, :datetime, nil)
     |> Deserializer.deserialize(:memberOf, :list, MicrosoftGraph.Model.MicrosoftGraphDirectoryObject)
     |> Deserializer.deserialize(:activities, :list, MicrosoftGraph.Model.MicrosoftGraphUserActivity)
     |> Deserializer.deserialize(:registeredDevices, :list, MicrosoftGraph.Model.MicrosoftGraphDirectoryObject)
     |> Deserializer.deserialize(:presence, :struct, MicrosoftGraph.Model.UserPresence)
     |> Deserializer.deserialize(:manager, :struct, MicrosoftGraph.Model.UserManager)
     |> Deserializer.deserialize(:onPremisesLastSyncDateTime, :datetime, nil)
     |> Deserializer.deserialize(:birthday, :datetime, nil)
     |> Deserializer.deserialize(:transitiveMemberOf, :list, MicrosoftGraph.Model.MicrosoftGraphDirectoryObject)
     |> Deserializer.deserialize(:serviceProvisioningErrors, :list, MicrosoftGraph.Model.OrgContactServiceProvisioningErrorsInner)
     |> Deserializer.deserialize(:drive, :struct, MicrosoftGraph.Model.UserDrive)
     |> Deserializer.deserialize(:employeeHireDate, :datetime, nil)
     |> Deserializer.deserialize(:contactFolders, :list, MicrosoftGraph.Model.MicrosoftGraphContactFolder)
     |> Deserializer.deserialize(:onenote, :struct, MicrosoftGraph.Model.UserOnenote)
     |> Deserializer.deserialize(:hireDate, :datetime, nil)
     |> Deserializer.deserialize(:calendar, :struct, MicrosoftGraph.Model.UserCalendar)
     |> Deserializer.deserialize(:chats, :list, MicrosoftGraph.Model.MicrosoftGraphChat)
     |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
     |> Deserializer.deserialize(:employeeExperience, :struct, MicrosoftGraph.Model.UserEmployeeExperience)
     |> Deserializer.deserialize(:identities, :list, MicrosoftGraph.Model.UserIdentitiesInner)
     |> Deserializer.deserialize(:print, :struct, MicrosoftGraph.Model.UserPrint)
     |> Deserializer.deserialize(:photo, :struct, MicrosoftGraph.Model.UserPhoto)
     |> Deserializer.deserialize(:licenseAssignmentStates, :list, MicrosoftGraph.Model.UserLicenseAssignmentStatesInner)
  end
end
