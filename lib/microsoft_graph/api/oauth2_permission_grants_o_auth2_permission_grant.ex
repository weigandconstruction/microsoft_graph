# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.Oauth2PermissionGrantsOAuth2PermissionGrant do
  @moduledoc """
  API calls for all endpoints tagged `Oauth2PermissionGrantsOAuth2PermissionGrant`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Get the number of the resource

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec oauth2_permission_grants_get_count8287(Tesla.Env.client, keyword()) :: {:ok, Integer.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def oauth2_permission_grants_get_count8287(connection, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/oauth2PermissionGrants/$count")
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

  @doc """
  Create oAuth2PermissionGrant (a delegated permission grant)
  Create a delegated permission grant represented by an oAuth2PermissionGrant object. A delegated permission grant authorizes a client service principal (representing a client application) to access a resource service principal (representing an API), on behalf of a signed-in user, for the level of access limited by the delegated permissions which were granted. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_o_auth2_permission_grant` (MicrosoftGraphOAuth2PermissionGrant): New entity
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphOAuth2PermissionGrant.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec oauth2_permission_grants_o_auth2_permission_grant_create_o_auth2_permission_grant(Tesla.Env.client, MicrosoftGraph.Model.MicrosoftGraphOAuth2PermissionGrant.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphOAuth2PermissionGrant.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def oauth2_permission_grants_o_auth2_permission_grant_create_o_auth2_permission_grant(connection, microsoft_graph_o_auth2_permission_grant, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/oauth2PermissionGrants")
      |> add_param(:body, :body, microsoft_graph_o_auth2_permission_grant)
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
  Delete oAuth2PermissionGrant (a delegated permission grant)
  Delete a delegated permission grant, represented by an oAuth2PermissionGrant object. When a delegated permission grant is deleted, the access it granted is revoked. Existing access tokens will continue to be valid for their lifetime, but new access tokens will not be granted for the delegated permissions identified in the deleted oAuth2PermissionGrant. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `o_auth2_permission_grant_id` (String.t): The unique identifier of oAuth2PermissionGrant
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec oauth2_permission_grants_o_auth2_permission_grant_delete_o_auth2_permission_grant(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def oauth2_permission_grants_o_auth2_permission_grant_delete_o_auth2_permission_grant(connection, o_auth2_permission_grant_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/oauth2PermissionGrants/#{o_auth2_permission_grant_id}")
      |> add_optional_params(optional_params, opts)
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
  Get oAuth2PermissionGrant (a delegated permission grant)
  Retrieve the properties of a single delegated permission grant represented by an oAuth2PermissionGrant object. An oAuth2PermissionGrant represents delegated permissions which have been granted for a client application to access an API on behalf of a signed-in user. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `o_auth2_permission_grant_id` (String.t): The unique identifier of oAuth2PermissionGrant
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphOAuth2PermissionGrant.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec oauth2_permission_grants_o_auth2_permission_grant_get_o_auth2_permission_grant(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphOAuth2PermissionGrant.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def oauth2_permission_grants_o_auth2_permission_grant_get_o_auth2_permission_grant(connection, o_auth2_permission_grant_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/oauth2PermissionGrants/#{o_auth2_permission_grant_id}")
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
  List oauth2PermissionGrants (delegated permission grants)
  Retrieve a list of oAuth2PermissionGrant objects, representing delegated permissions which have been granted for client applications to access APIs on behalf of signed-in users. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
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
  @spec oauth2_permission_grants_o_auth2_permission_grant_list_o_auth2_permission_grant(Tesla.Env.client, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphOAuth2PermissionGrantCollectionResponse.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def oauth2_permission_grants_o_auth2_permission_grant_list_o_auth2_permission_grant(connection, opts \\ []) do
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
      |> url("/oauth2PermissionGrants")
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
  Update a delegated permission grant (oAuth2PermissionGrant)
  Update the properties of oAuth2PermissionGrant object, representing a delegated permission grant. An oAuth2PermissionGrant can be updated to change which delegated permissions are granted, by adding or removing items from the list in scopes. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `o_auth2_permission_grant_id` (String.t): The unique identifier of oAuth2PermissionGrant
  - `microsoft_graph_o_auth2_permission_grant` (MicrosoftGraphOAuth2PermissionGrant): New property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphOAuth2PermissionGrant.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec oauth2_permission_grants_o_auth2_permission_grant_update_o_auth2_permission_grant(Tesla.Env.client, String.t, MicrosoftGraph.Model.MicrosoftGraphOAuth2PermissionGrant.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphOAuth2PermissionGrant.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def oauth2_permission_grants_o_auth2_permission_grant_update_o_auth2_permission_grant(connection, o_auth2_permission_grant_id, microsoft_graph_o_auth2_permission_grant, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/oauth2PermissionGrants/#{o_auth2_permission_grant_id}")
      |> add_param(:body, :body, microsoft_graph_o_auth2_permission_grant)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphOAuth2PermissionGrant},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end