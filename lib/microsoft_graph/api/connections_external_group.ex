# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.ConnectionsExternalGroup do
  @moduledoc """
  API calls for all endpoints tagged `ConnectionsExternalGroup`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Create externalGroup
  Create a new externalGroup object. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `microsoft_graph_external_connectors_external_group` (MicrosoftGraphExternalConnectorsExternalGroup): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalGroup.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_create_groups(Tesla.Env.client, String.t, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalGroup.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalGroup.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_create_groups(connection, external_connection_id, microsoft_graph_external_connectors_external_group, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/connections/#{external_connection_id}/groups")
      |> add_param(:body, :body, microsoft_graph_external_connectors_external_group)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalGroup},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete externalGroup
  Delete an externalGroup object. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `external_group_id` (String.t): The unique identifier of externalGroup
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_delete_groups(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_delete_groups(connection, external_connection_id, external_group_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/connections/#{external_connection_id}/groups/#{external_group_id}")
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
  Get externalGroup
  Get an externalGroup object. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `external_group_id` (String.t): The unique identifier of externalGroup
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalGroup.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_get_groups(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalGroup.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_get_groups(connection, external_connection_id, external_group_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/connections/#{external_connection_id}/groups/#{external_group_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalGroup},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Create identity
  Create an identity resource for a new member in an externalGroup. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `external_group_id` (String.t): The unique identifier of externalGroup
  - `microsoft_graph_external_connectors_identity` (MicrosoftGraphExternalConnectorsIdentity): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsIdentity.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_groups_create_members(Tesla.Env.client, String.t, String.t, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsIdentity.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsIdentity.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_groups_create_members(connection, external_connection_id, external_group_id, microsoft_graph_external_connectors_identity, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/connections/#{external_connection_id}/groups/#{external_group_id}/members")
      |> add_param(:body, :body, microsoft_graph_external_connectors_identity)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsIdentity},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete identity
  Delete an identity resource to remove the corresponding member from an externalGroup. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `external_group_id` (String.t): The unique identifier of externalGroup
  - `identity_id` (String.t): The unique identifier of identity
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_groups_delete_members(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_groups_delete_members(connection, external_connection_id, external_group_id, identity_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/connections/#{external_connection_id}/groups/#{external_group_id}/members/#{identity_id}")
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
  Get the number of the resource

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `opts` (keyword): Optional parameters
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_groups_get_count6035(Tesla.Env.client, String.t, keyword()) :: {:ok, Integer.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_groups_get_count6035(connection, external_connection_id, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/connections/#{external_connection_id}/groups/$count")
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
  Get members from connections
  A member added to an externalGroup. You can add Microsoft Entra users, Microsoft Entra groups, or an externalGroup as members.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `external_group_id` (String.t): The unique identifier of externalGroup
  - `identity_id` (String.t): The unique identifier of identity
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsIdentity.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_groups_get_members(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsIdentity.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_groups_get_members(connection, external_connection_id, external_group_id, identity_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/connections/#{external_connection_id}/groups/#{external_group_id}/members/#{identity_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsIdentity},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get members from connections
  A member added to an externalGroup. You can add Microsoft Entra users, Microsoft Entra groups, or an externalGroup as members.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `external_group_id` (String.t): The unique identifier of externalGroup
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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsIdentityCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_groups_list_members(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsIdentityCollectionResponse.t} | {:error, Tesla.Env.t}
  def connections_groups_list_members(connection, external_connection_id, external_group_id, opts \\ []) do
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
      |> url("/connections/#{external_connection_id}/groups/#{external_group_id}/members")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsIdentityCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get the number of the resource

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `external_group_id` (String.t): The unique identifier of externalGroup
  - `opts` (keyword): Optional parameters
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_groups_members_get_count_d49a(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Integer.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_groups_members_get_count_d49a(connection, external_connection_id, external_group_id, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/connections/#{external_connection_id}/groups/#{external_group_id}/members/$count")
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
  Update the navigation property members in connections

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `external_group_id` (String.t): The unique identifier of externalGroup
  - `identity_id` (String.t): The unique identifier of identity
  - `microsoft_graph_external_connectors_identity` (MicrosoftGraphExternalConnectorsIdentity): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsIdentity.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_groups_update_members(Tesla.Env.client, String.t, String.t, String.t, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsIdentity.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsIdentity.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_groups_update_members(connection, external_connection_id, external_group_id, identity_id, microsoft_graph_external_connectors_identity, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/connections/#{external_connection_id}/groups/#{external_group_id}/members/#{identity_id}")
      |> add_param(:body, :body, microsoft_graph_external_connectors_identity)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsIdentity},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get externalGroup
  Get an externalGroup object. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalGroupCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_list_groups(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalGroupCollectionResponse.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_list_groups(connection, external_connection_id, opts \\ []) do
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
      |> url("/connections/#{external_connection_id}/groups")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalGroupCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update externalGroup
  Update the properties of an externalGroup object. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `external_group_id` (String.t): The unique identifier of externalGroup
  - `microsoft_graph_external_connectors_external_group` (MicrosoftGraphExternalConnectorsExternalGroup): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalGroup.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_update_groups(Tesla.Env.client, String.t, String.t, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalGroup.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalGroup.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_update_groups(connection, external_connection_id, external_group_id, microsoft_graph_external_connectors_external_group, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/connections/#{external_connection_id}/groups/#{external_group_id}")
      |> add_param(:body, :body, microsoft_graph_external_connectors_external_group)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalGroup},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end