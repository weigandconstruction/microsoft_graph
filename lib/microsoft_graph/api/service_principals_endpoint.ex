# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.ServicePrincipalsEndpoint do
  @moduledoc """
  API calls for all endpoints tagged `ServicePrincipalsEndpoint`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Create new navigation property to endpoints for servicePrincipals

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `service_principal_id` (String.t): The unique identifier of servicePrincipal
  - `microsoft_graph_endpoint` (MicrosoftGraphEndpoint): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphEndpoint.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec service_principals_create_endpoints(
          Tesla.Env.client(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphEndpoint.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphEndpoint.t()}
          | {:error, Tesla.Env.t()}
  def service_principals_create_endpoints(
        connection,
        service_principal_id,
        microsoft_graph_endpoint,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/servicePrincipals/#{service_principal_id}/endpoints")
      |> add_param(:body, :body, microsoft_graph_endpoint)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphEndpoint},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete navigation property endpoints for servicePrincipals

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `service_principal_id` (String.t): The unique identifier of servicePrincipal
  - `endpoint_id` (String.t): The unique identifier of endpoint
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec service_principals_delete_endpoints(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def service_principals_delete_endpoints(
        connection,
        service_principal_id,
        endpoint_id,
        opts \\ []
      ) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/servicePrincipals/#{service_principal_id}/endpoints/#{endpoint_id}")
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
  - `service_principal_id` (String.t): The unique identifier of servicePrincipal
  - `opts` (keyword): Optional parameters
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec service_principals_endpoints_get_count_c0e0(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, Integer.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def service_principals_endpoints_get_count_c0e0(connection, service_principal_id, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/servicePrincipals/#{service_principal_id}/endpoints/$count")
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
  Get endpoints from servicePrincipals

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `service_principal_id` (String.t): The unique identifier of servicePrincipal
  - `endpoint_id` (String.t): The unique identifier of endpoint
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphEndpoint.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec service_principals_get_endpoints(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphEndpoint.t()}
          | {:error, Tesla.Env.t()}
  def service_principals_get_endpoints(connection, service_principal_id, endpoint_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/servicePrincipals/#{service_principal_id}/endpoints/#{endpoint_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphEndpoint},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get endpoints from servicePrincipals

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `service_principal_id` (String.t): The unique identifier of servicePrincipal
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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphEndpointCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec service_principals_list_endpoints(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphEndpointCollectionResponse.t()}
          | {:error, Tesla.Env.t()}
  def service_principals_list_endpoints(connection, service_principal_id, opts \\ []) do
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
      |> url("/servicePrincipals/#{service_principal_id}/endpoints")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphEndpointCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update the navigation property endpoints in servicePrincipals

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `service_principal_id` (String.t): The unique identifier of servicePrincipal
  - `endpoint_id` (String.t): The unique identifier of endpoint
  - `microsoft_graph_endpoint` (MicrosoftGraphEndpoint): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphEndpoint.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec service_principals_update_endpoints(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphEndpoint.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphEndpoint.t()}
          | {:error, Tesla.Env.t()}
  def service_principals_update_endpoints(
        connection,
        service_principal_id,
        endpoint_id,
        microsoft_graph_endpoint,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/servicePrincipals/#{service_principal_id}/endpoints/#{endpoint_id}")
      |> add_param(:body, :body, microsoft_graph_endpoint)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphEndpoint},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end
