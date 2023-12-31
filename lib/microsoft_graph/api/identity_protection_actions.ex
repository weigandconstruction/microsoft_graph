# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.IdentityProtectionActions do
  @moduledoc """
  API calls for all endpoints tagged `IdentityProtectionActions`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Invoke action confirmCompromised
  Confirm one or more riskyServicePrincipal objects as compromised. This action sets the targeted service principal account's risk level to high. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `identity_protection_risky_service_principals_confirm_compromised_request` (IdentityProtectionRiskyServicePrincipalsConfirmCompromisedRequest): Action parameters
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec identity_protection_risky_service_principals_confirm_compromised(
          Tesla.Env.client(),
          MicrosoftGraph.Model.IdentityProtectionRiskyServicePrincipalsConfirmCompromisedRequest.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def identity_protection_risky_service_principals_confirm_compromised(
        connection,
        identity_protection_risky_service_principals_confirm_compromised_request,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/identityProtection/riskyServicePrincipals/confirmCompromised")
      |> add_param(
        :body,
        :body,
        identity_protection_risky_service_principals_confirm_compromised_request
      )
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke action dismiss
  Dismiss the risk of one or more riskyServicePrincipal objects. This action sets the targeted service principal account's risk level to none. You can dismiss up to 60 service principal accounts in one request. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `identity_protection_risky_service_principals_confirm_compromised_request` (IdentityProtectionRiskyServicePrincipalsConfirmCompromisedRequest): Action parameters
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec identity_protection_risky_service_principals_dismiss(
          Tesla.Env.client(),
          MicrosoftGraph.Model.IdentityProtectionRiskyServicePrincipalsConfirmCompromisedRequest.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def identity_protection_risky_service_principals_dismiss(
        connection,
        identity_protection_risky_service_principals_confirm_compromised_request,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/identityProtection/riskyServicePrincipals/dismiss")
      |> add_param(
        :body,
        :body,
        identity_protection_risky_service_principals_confirm_compromised_request
      )
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke action confirmCompromised
  Confirm one or more riskyUser objects as compromised. This action sets the targeted user's risk level to high. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `identity_protection_risky_users_confirm_compromised_request` (IdentityProtectionRiskyUsersConfirmCompromisedRequest): Action parameters
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec identity_protection_risky_users_confirm_compromised(
          Tesla.Env.client(),
          MicrosoftGraph.Model.IdentityProtectionRiskyUsersConfirmCompromisedRequest.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def identity_protection_risky_users_confirm_compromised(
        connection,
        identity_protection_risky_users_confirm_compromised_request,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/identityProtection/riskyUsers/confirmCompromised")
      |> add_param(:body, :body, identity_protection_risky_users_confirm_compromised_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke action dismiss
  Dismiss the risk of one or more riskyUser objects. This action sets the targeted user's risk level to none. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `identity_protection_risky_users_confirm_compromised_request` (IdentityProtectionRiskyUsersConfirmCompromisedRequest): Action parameters
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec identity_protection_risky_users_dismiss(
          Tesla.Env.client(),
          MicrosoftGraph.Model.IdentityProtectionRiskyUsersConfirmCompromisedRequest.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def identity_protection_risky_users_dismiss(
        connection,
        identity_protection_risky_users_confirm_compromised_request,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/identityProtection/riskyUsers/dismiss")
      |> add_param(:body, :body, identity_protection_risky_users_confirm_compromised_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end
