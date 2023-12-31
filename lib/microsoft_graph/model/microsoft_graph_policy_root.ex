# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphPolicyRoot do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :activityBasedTimeoutPolicies,
    :adminConsentRequestPolicy,
    :appManagementPolicies,
    :authenticationFlowsPolicy,
    :authenticationMethodsPolicy,
    :authenticationStrengthPolicies,
    :authorizationPolicy,
    :claimsMappingPolicies,
    :conditionalAccessPolicies,
    :crossTenantAccessPolicy,
    :defaultAppManagementPolicy,
    :featureRolloutPolicies,
    :homeRealmDiscoveryPolicies,
    :identitySecurityDefaultsEnforcementPolicy,
    :permissionGrantPolicies,
    :roleManagementPolicies,
    :roleManagementPolicyAssignments,
    :tokenIssuancePolicies,
    :tokenLifetimePolicies
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :activityBasedTimeoutPolicies =>
            [MicrosoftGraph.Model.MicrosoftGraphActivityBasedTimeoutPolicy.t()] | nil,
          :adminConsentRequestPolicy =>
            MicrosoftGraph.Model.PolicyRootAdminConsentRequestPolicy.t() | nil,
          :appManagementPolicies =>
            [MicrosoftGraph.Model.MicrosoftGraphAppManagementPolicy.t()] | nil,
          :authenticationFlowsPolicy =>
            MicrosoftGraph.Model.PolicyRootAuthenticationFlowsPolicy.t() | nil,
          :authenticationMethodsPolicy =>
            MicrosoftGraph.Model.PolicyRootAuthenticationMethodsPolicy.t() | nil,
          :authenticationStrengthPolicies =>
            [MicrosoftGraph.Model.MicrosoftGraphAuthenticationStrengthPolicy.t()] | nil,
          :authorizationPolicy => MicrosoftGraph.Model.PolicyRootAuthorizationPolicy.t() | nil,
          :claimsMappingPolicies =>
            [MicrosoftGraph.Model.MicrosoftGraphClaimsMappingPolicy.t()] | nil,
          :conditionalAccessPolicies =>
            [MicrosoftGraph.Model.MicrosoftGraphConditionalAccessPolicy.t()] | nil,
          :crossTenantAccessPolicy =>
            MicrosoftGraph.Model.PolicyRootCrossTenantAccessPolicy.t() | nil,
          :defaultAppManagementPolicy =>
            MicrosoftGraph.Model.PolicyRootDefaultAppManagementPolicy.t() | nil,
          :featureRolloutPolicies =>
            [MicrosoftGraph.Model.MicrosoftGraphFeatureRolloutPolicy.t()] | nil,
          :homeRealmDiscoveryPolicies =>
            [MicrosoftGraph.Model.MicrosoftGraphHomeRealmDiscoveryPolicy.t()] | nil,
          :identitySecurityDefaultsEnforcementPolicy =>
            MicrosoftGraph.Model.PolicyRootIdentitySecurityDefaultsEnforcementPolicy.t() | nil,
          :permissionGrantPolicies =>
            [MicrosoftGraph.Model.MicrosoftGraphPermissionGrantPolicy.t()] | nil,
          :roleManagementPolicies =>
            [MicrosoftGraph.Model.MicrosoftGraphUnifiedRoleManagementPolicy.t()] | nil,
          :roleManagementPolicyAssignments =>
            [MicrosoftGraph.Model.MicrosoftGraphUnifiedRoleManagementPolicyAssignment.t()] | nil,
          :tokenIssuancePolicies =>
            [MicrosoftGraph.Model.MicrosoftGraphTokenIssuancePolicy.t()] | nil,
          :tokenLifetimePolicies =>
            [MicrosoftGraph.Model.MicrosoftGraphTokenLifetimePolicy.t()] | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :activityBasedTimeoutPolicies,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphActivityBasedTimeoutPolicy
    )
    |> Deserializer.deserialize(
      :adminConsentRequestPolicy,
      :struct,
      MicrosoftGraph.Model.PolicyRootAdminConsentRequestPolicy
    )
    |> Deserializer.deserialize(
      :appManagementPolicies,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphAppManagementPolicy
    )
    |> Deserializer.deserialize(
      :authenticationFlowsPolicy,
      :struct,
      MicrosoftGraph.Model.PolicyRootAuthenticationFlowsPolicy
    )
    |> Deserializer.deserialize(
      :authenticationMethodsPolicy,
      :struct,
      MicrosoftGraph.Model.PolicyRootAuthenticationMethodsPolicy
    )
    |> Deserializer.deserialize(
      :authenticationStrengthPolicies,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphAuthenticationStrengthPolicy
    )
    |> Deserializer.deserialize(
      :authorizationPolicy,
      :struct,
      MicrosoftGraph.Model.PolicyRootAuthorizationPolicy
    )
    |> Deserializer.deserialize(
      :claimsMappingPolicies,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphClaimsMappingPolicy
    )
    |> Deserializer.deserialize(
      :conditionalAccessPolicies,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphConditionalAccessPolicy
    )
    |> Deserializer.deserialize(
      :crossTenantAccessPolicy,
      :struct,
      MicrosoftGraph.Model.PolicyRootCrossTenantAccessPolicy
    )
    |> Deserializer.deserialize(
      :defaultAppManagementPolicy,
      :struct,
      MicrosoftGraph.Model.PolicyRootDefaultAppManagementPolicy
    )
    |> Deserializer.deserialize(
      :featureRolloutPolicies,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphFeatureRolloutPolicy
    )
    |> Deserializer.deserialize(
      :homeRealmDiscoveryPolicies,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphHomeRealmDiscoveryPolicy
    )
    |> Deserializer.deserialize(
      :identitySecurityDefaultsEnforcementPolicy,
      :struct,
      MicrosoftGraph.Model.PolicyRootIdentitySecurityDefaultsEnforcementPolicy
    )
    |> Deserializer.deserialize(
      :permissionGrantPolicies,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphPermissionGrantPolicy
    )
    |> Deserializer.deserialize(
      :roleManagementPolicies,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphUnifiedRoleManagementPolicy
    )
    |> Deserializer.deserialize(
      :roleManagementPolicyAssignments,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphUnifiedRoleManagementPolicyAssignment
    )
    |> Deserializer.deserialize(
      :tokenIssuancePolicies,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphTokenIssuancePolicy
    )
    |> Deserializer.deserialize(
      :tokenLifetimePolicies,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphTokenLifetimePolicy
    )
  end
end
