# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.SitesRichLongRunningOperation do
  @moduledoc """
  API calls for all endpoints tagged `SitesRichLongRunningOperation`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Create new navigation property to operations for sites

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `microsoft_graph_rich_long_running_operation` (MicrosoftGraphRichLongRunningOperation): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphRichLongRunningOperation.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_create_operations(Tesla.Env.client, String.t, MicrosoftGraph.Model.MicrosoftGraphRichLongRunningOperation.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphRichLongRunningOperation.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def sites_create_operations(connection, site_id, microsoft_graph_rich_long_running_operation, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/sites/#{site_id}/operations")
      |> add_param(:body, :body, microsoft_graph_rich_long_running_operation)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphRichLongRunningOperation},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete navigation property operations for sites

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `rich_long_running_operation_id` (String.t): The unique identifier of richLongRunningOperation
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_delete_operations(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def sites_delete_operations(connection, site_id, rich_long_running_operation_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/sites/#{site_id}/operations/#{rich_long_running_operation_id}")
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
  Get richLongRunningOperation
  Get the status of a rich long-running operation on a site or a list. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `rich_long_running_operation_id` (String.t): The unique identifier of richLongRunningOperation
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphRichLongRunningOperation.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_get_operations(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphRichLongRunningOperation.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def sites_get_operations(connection, site_id, rich_long_running_operation_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/sites/#{site_id}/operations/#{rich_long_running_operation_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphRichLongRunningOperation},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  List operations on a site
  Get a list of rich long-running operations associated with a site. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphRichLongRunningOperationCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_list_operations(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphRichLongRunningOperationCollectionResponse.t} | {:error, Tesla.Env.t}
  def sites_list_operations(connection, site_id, opts \\ []) do
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
      |> url("/sites/#{site_id}/operations")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphRichLongRunningOperationCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get the number of the resource

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `opts` (keyword): Optional parameters
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_operations_get_count71b0(Tesla.Env.client, String.t, keyword()) :: {:ok, Integer.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def sites_operations_get_count71b0(connection, site_id, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/sites/#{site_id}/operations/$count")
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
  Update the navigation property operations in sites

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `rich_long_running_operation_id` (String.t): The unique identifier of richLongRunningOperation
  - `microsoft_graph_rich_long_running_operation` (MicrosoftGraphRichLongRunningOperation): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphRichLongRunningOperation.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_update_operations(Tesla.Env.client, String.t, String.t, MicrosoftGraph.Model.MicrosoftGraphRichLongRunningOperation.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphRichLongRunningOperation.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def sites_update_operations(connection, site_id, rich_long_running_operation_id, microsoft_graph_rich_long_running_operation, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/sites/#{site_id}/operations/#{rich_long_running_operation_id}")
      |> add_param(:body, :body, microsoft_graph_rich_long_running_operation)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphRichLongRunningOperation},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end