# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.ConnectionsExternalItem do
  @moduledoc """
  API calls for all endpoints tagged `ConnectionsExternalItem`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Create new navigation property to items for connections

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `microsoft_graph_external_connectors_external_item` (MicrosoftGraphExternalConnectorsExternalItem): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalItem.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_create_items(Tesla.Env.client, String.t, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalItem.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalItem.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_create_items(connection, external_connection_id, microsoft_graph_external_connectors_external_item, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/connections/#{external_connection_id}/items")
      |> add_param(:body, :body, microsoft_graph_external_connectors_external_item)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalItem},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete externalItem
  Delete an externalItem object. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `external_item_id` (String.t): The unique identifier of externalItem
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_delete_items(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_delete_items(connection, external_connection_id, external_item_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/connections/#{external_connection_id}/items/#{external_item_id}")
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
  Get externalItem
  Read the properties and relationships of an externalItem object. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `external_item_id` (String.t): The unique identifier of externalItem
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalItem.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_get_items(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalItem.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_get_items(connection, external_connection_id, external_item_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/connections/#{external_connection_id}/items/#{external_item_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalItem},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get the number of the resource

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `external_item_id` (String.t): The unique identifier of externalItem
  - `opts` (keyword): Optional parameters
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_items_activities_get_count5552(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Integer.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_items_activities_get_count5552(connection, external_connection_id, external_item_id, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/connections/#{external_connection_id}/items/#{external_item_id}/activities/$count")
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
  Get performedBy from connections
  Represents an identity used to identify who is responsible for the activity.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `external_item_id` (String.t): The unique identifier of externalItem
  - `external_activity_id` (String.t): The unique identifier of externalActivity
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsIdentity.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_items_activities_get_performed_by(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsIdentity.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_items_activities_get_performed_by(connection, external_connection_id, external_item_id, external_activity_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/connections/#{external_connection_id}/items/#{external_item_id}/activities/#{external_activity_id}/performedBy")
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
  Create new navigation property to activities for connections

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `external_item_id` (String.t): The unique identifier of externalItem
  - `microsoft_graph_external_connectors_external_activity` (MicrosoftGraphExternalConnectorsExternalActivity): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalActivity.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_items_create_activities(Tesla.Env.client, String.t, String.t, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalActivity.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalActivity.t} | {:error, Tesla.Env.t}
  def connections_items_create_activities(connection, external_connection_id, external_item_id, microsoft_graph_external_connectors_external_activity, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/connections/#{external_connection_id}/items/#{external_item_id}/activities")
      |> add_param(:body, :body, microsoft_graph_external_connectors_external_activity)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalActivity},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete navigation property activities for connections

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `external_item_id` (String.t): The unique identifier of externalItem
  - `external_activity_id` (String.t): The unique identifier of externalActivity
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_items_delete_activities(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_items_delete_activities(connection, external_connection_id, external_item_id, external_activity_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/connections/#{external_connection_id}/items/#{external_item_id}/activities/#{external_activity_id}")
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
  Get activities from connections
  Returns a list of activities performed on the item. Write-only.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `external_item_id` (String.t): The unique identifier of externalItem
  - `external_activity_id` (String.t): The unique identifier of externalActivity
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalActivity.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_items_get_activities(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalActivity.t} | {:error, Tesla.Env.t}
  def connections_items_get_activities(connection, external_connection_id, external_item_id, external_activity_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/connections/#{external_connection_id}/items/#{external_item_id}/activities/#{external_activity_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalActivity},
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
  @spec connections_items_get_count_eebb(Tesla.Env.client, String.t, keyword()) :: {:ok, Integer.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_items_get_count_eebb(connection, external_connection_id, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/connections/#{external_connection_id}/items/$count")
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
  Get activities from connections
  Returns a list of activities performed on the item. Write-only.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `external_item_id` (String.t): The unique identifier of externalItem
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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalActivityCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_items_list_activities(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalActivityCollectionResponse.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_items_list_activities(connection, external_connection_id, external_item_id, opts \\ []) do
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
      |> url("/connections/#{external_connection_id}/items/#{external_item_id}/activities")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalActivityCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update the navigation property activities in connections

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `external_item_id` (String.t): The unique identifier of externalItem
  - `external_activity_id` (String.t): The unique identifier of externalActivity
  - `microsoft_graph_external_connectors_external_activity` (MicrosoftGraphExternalConnectorsExternalActivity): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalActivity.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_items_update_activities(Tesla.Env.client, String.t, String.t, String.t, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalActivity.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalActivity.t} | {:error, Tesla.Env.t}
  def connections_items_update_activities(connection, external_connection_id, external_item_id, external_activity_id, microsoft_graph_external_connectors_external_activity, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/connections/#{external_connection_id}/items/#{external_item_id}/activities/#{external_activity_id}")
      |> add_param(:body, :body, microsoft_graph_external_connectors_external_activity)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalActivity},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get externalItem
  Read the properties and relationships of an externalItem object. This API is available in the following national cloud deployments.

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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalItemCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_list_items(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalItemCollectionResponse.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_list_items(connection, external_connection_id, opts \\ []) do
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
      |> url("/connections/#{external_connection_id}/items")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalItemCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update the navigation property items in connections

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `external_connection_id` (String.t): The unique identifier of externalConnection
  - `external_item_id` (String.t): The unique identifier of externalItem
  - `microsoft_graph_external_connectors_external_item` (MicrosoftGraphExternalConnectorsExternalItem): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalItem.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec connections_update_items(Tesla.Env.client, String.t, String.t, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalItem.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalItem.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def connections_update_items(connection, external_connection_id, external_item_id, microsoft_graph_external_connectors_external_item, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/connections/#{external_connection_id}/items/#{external_item_id}")
      |> add_param(:body, :body, microsoft_graph_external_connectors_external_item)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalItem},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end