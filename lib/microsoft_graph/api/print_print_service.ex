# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.PrintPrintService do
  @moduledoc """
  API calls for all endpoints tagged `PrintPrintService`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Create new navigation property to services for print

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_print_service` (MicrosoftGraphPrintService): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPrintService.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_create_services(
          Tesla.Env.client(),
          MicrosoftGraph.Model.MicrosoftGraphPrintService.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphPrintService.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def print_create_services(connection, microsoft_graph_print_service, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/print/services")
      |> add_param(:body, :body, microsoft_graph_print_service)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPrintService},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete navigation property services for print

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `print_service_id` (String.t): The unique identifier of printService
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_delete_services(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def print_delete_services(connection, print_service_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/print/services/#{print_service_id}")
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
  Get printService
  Retrieve the properties and relationships of a print service. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `print_service_id` (String.t): The unique identifier of printService
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPrintService.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_get_services(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphPrintService.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def print_get_services(connection, print_service_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/print/services/#{print_service_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPrintService},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  List printServices
  Retrieve a list of printService objects that represent the services available to your tenant. This API is available in the following national cloud deployments.

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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPrintServiceCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_list_services(Tesla.Env.client(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphPrintServiceCollectionResponse.t()}
          | {:error, Tesla.Env.t()}
  def print_list_services(connection, opts \\ []) do
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
      |> url("/print/services")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPrintServiceCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Create new navigation property to endpoints for print

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `print_service_id` (String.t): The unique identifier of printService
  - `microsoft_graph_print_service_endpoint` (MicrosoftGraphPrintServiceEndpoint): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPrintServiceEndpoint.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_services_create_endpoints(
          Tesla.Env.client(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphPrintServiceEndpoint.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphPrintServiceEndpoint.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def print_services_create_endpoints(
        connection,
        print_service_id,
        microsoft_graph_print_service_endpoint,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/print/services/#{print_service_id}/endpoints")
      |> add_param(:body, :body, microsoft_graph_print_service_endpoint)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPrintServiceEndpoint},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete navigation property endpoints for print

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `print_service_id` (String.t): The unique identifier of printService
  - `print_service_endpoint_id` (String.t): The unique identifier of printServiceEndpoint
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_services_delete_endpoints(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def print_services_delete_endpoints(
        connection,
        print_service_id,
        print_service_endpoint_id,
        opts \\ []
      ) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/print/services/#{print_service_id}/endpoints/#{print_service_endpoint_id}")
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
  - `print_service_id` (String.t): The unique identifier of printService
  - `opts` (keyword): Optional parameters
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_services_endpoints_get_count805a(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, Integer.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def print_services_endpoints_get_count805a(connection, print_service_id, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/print/services/#{print_service_id}/endpoints/$count")
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
  @spec print_services_get_count719b(Tesla.Env.client(), keyword()) ::
          {:ok, Integer.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def print_services_get_count719b(connection, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/print/services/$count")
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
  Get printServiceEndpoint
  Retrieve the properties and relationships of a print service endpoint. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `print_service_id` (String.t): The unique identifier of printService
  - `print_service_endpoint_id` (String.t): The unique identifier of printServiceEndpoint
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPrintServiceEndpoint.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_services_get_endpoints(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphPrintServiceEndpoint.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def print_services_get_endpoints(
        connection,
        print_service_id,
        print_service_endpoint_id,
        opts \\ []
      ) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/print/services/#{print_service_id}/endpoints/#{print_service_endpoint_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPrintServiceEndpoint},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  List endpoints
  Retrieve a list of endpoints exposed by a print service. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `print_service_id` (String.t): The unique identifier of printService
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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPrintServiceEndpointCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_services_list_endpoints(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphPrintServiceEndpointCollectionResponse.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def print_services_list_endpoints(connection, print_service_id, opts \\ []) do
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
      |> url("/print/services/#{print_service_id}/endpoints")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPrintServiceEndpointCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update the navigation property endpoints in print

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `print_service_id` (String.t): The unique identifier of printService
  - `print_service_endpoint_id` (String.t): The unique identifier of printServiceEndpoint
  - `microsoft_graph_print_service_endpoint` (MicrosoftGraphPrintServiceEndpoint): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPrintServiceEndpoint.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_services_update_endpoints(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphPrintServiceEndpoint.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphPrintServiceEndpoint.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def print_services_update_endpoints(
        connection,
        print_service_id,
        print_service_endpoint_id,
        microsoft_graph_print_service_endpoint,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/print/services/#{print_service_id}/endpoints/#{print_service_endpoint_id}")
      |> add_param(:body, :body, microsoft_graph_print_service_endpoint)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPrintServiceEndpoint},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update the navigation property services in print

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `print_service_id` (String.t): The unique identifier of printService
  - `microsoft_graph_print_service` (MicrosoftGraphPrintService): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPrintService.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_update_services(
          Tesla.Env.client(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphPrintService.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphPrintService.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def print_update_services(
        connection,
        print_service_id,
        microsoft_graph_print_service,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/print/services/#{print_service_id}")
      |> add_param(:body, :body, microsoft_graph_print_service)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPrintService},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end
