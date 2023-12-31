# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.UsersOAuth2PermissionGrant do
  @moduledoc """
  API calls for all endpoints tagged `UsersOAuth2PermissionGrant`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Get oauth2PermissionGrants from users

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_id` (String.t): The unique identifier of user
  - `o_auth2_permission_grant_id` (String.t): The unique identifier of oAuth2PermissionGrant
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphOAuth2PermissionGrant.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec users_get_oauth2_permission_grants(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphOAuth2PermissionGrant.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def users_get_oauth2_permission_grants(
        connection,
        user_id,
        o_auth2_permission_grant_id,
        opts \\ []
      ) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/users/#{user_id}/oauth2PermissionGrants/#{o_auth2_permission_grant_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphOAuth2PermissionGrant},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  List a user's oauth2PermissionGrants
  Retrieve a list of oAuth2PermissionGrant entities, which represent delegated permissions granted to enable a client application to access an API on behalf of the user. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_id` (String.t): The unique identifier of user
  - `opts` (keyword): Optional parameters
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$orderby"` ([String.t]): Order items by property values
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphOAuth2PermissionGrantCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec users_list_oauth2_permission_grants(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphOAuth2PermissionGrantCollectionResponse.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def users_list_oauth2_permission_grants(connection, user_id, opts \\ []) do
    optional_params = %{
      :"$top" => :query,
      :"$skip" => :query,
      :"$search" => :query,
      :"$filter" => :query,
      :"$count" => :query,
      :"$orderby" => :query,
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/users/#{user_id}/oauth2PermissionGrants")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphOAuth2PermissionGrantCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get the number of the resource

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_id` (String.t): The unique identifier of user
  - `opts` (keyword): Optional parameters
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec users_oauth2_permission_grants_get_count_fb7b(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, Integer.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def users_oauth2_permission_grants_get_count_fb7b(connection, user_id, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/users/#{user_id}/oauth2PermissionGrants/$count")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", false},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end
