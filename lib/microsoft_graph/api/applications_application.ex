# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.ApplicationsApplication do
  @moduledoc """
  API calls for all endpoints tagged `ApplicationsApplication`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Create application
  Create a new application object. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_application` (MicrosoftGraphApplication): New entity
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphApplication.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec applications_application_create_application(
          Tesla.Env.client(),
          MicrosoftGraph.Model.MicrosoftGraphApplication.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphApplication.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def applications_application_create_application(
        connection,
        microsoft_graph_application,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/applications")
      |> add_param(:body, :body, microsoft_graph_application)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphApplication},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete application
  Delete an application object. When deleted, apps are moved to a temporary container and can be restored within 30 days. After that time, they are permanently deleted. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `application_id` (String.t): The unique identifier of application
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec applications_application_delete_application(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def applications_application_delete_application(connection, application_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/applications/#{application_id}")
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
  Delete application
  Delete an application object. When deleted, apps are moved to a temporary container and can be restored within 30 days. After that time, they are permanently deleted. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `app_id` (String.t): Alternate key of application
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec applications_application_delete_application_by_app_id(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def applications_application_delete_application_by_app_id(connection, app_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/applications(appId&#x3D;&#39;#{app_id}&#39;)")
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
  Get application
  Get the properties and relationships of an application object. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `application_id` (String.t): The unique identifier of application
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphApplication.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec applications_application_get_application(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphApplication.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def applications_application_get_application(connection, application_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/applications/#{application_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphApplication},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get application
  Get the properties and relationships of an application object. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `app_id` (String.t): Alternate key of application
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphApplication.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec applications_application_get_application_by_app_id(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphApplication.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def applications_application_get_application_by_app_id(connection, app_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/applications(appId&#x3D;&#39;#{app_id}&#39;)")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphApplication},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get logo for application from applications
  The main logo for the application. Not nullable.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `application_id` (String.t): The unique identifier of application
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec applications_application_get_logo(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, String.t()}
          | {:error, Tesla.Env.t()}
  def applications_application_get_logo(connection, application_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/applications/#{application_id}/logo")
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
  List applications
  Get the list of applications in this organization. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:ConsistencyLevel` (String.t): Indicates the requested consistency level. Documentation URL: https://docs.microsoft.com/graph/aad-advanced-queries
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$orderby"` ([String.t]): Order items by property values
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphApplicationCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec applications_application_list_application(Tesla.Env.client(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphApplicationCollectionResponse.t()}
          | {:error, Tesla.Env.t()}
  def applications_application_list_application(connection, opts \\ []) do
    optional_params = %{
      :ConsistencyLevel => :headers,
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
      |> url("/applications")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphApplicationCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update application
  Update the properties of an application object. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `application_id` (String.t): The unique identifier of application
  - `microsoft_graph_application` (MicrosoftGraphApplication): New property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphApplication.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec applications_application_update_application(
          Tesla.Env.client(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphApplication.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphApplication.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def applications_application_update_application(
        connection,
        application_id,
        microsoft_graph_application,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/applications/#{application_id}")
      |> add_param(:body, :body, microsoft_graph_application)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphApplication},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update application
  Update the properties of an application object. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `app_id` (String.t): Alternate key of application
  - `microsoft_graph_application` (MicrosoftGraphApplication): New property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphApplication.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec applications_application_update_application_by_app_id(
          Tesla.Env.client(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphApplication.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphApplication.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def applications_application_update_application_by_app_id(
        connection,
        app_id,
        microsoft_graph_application,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/applications(appId&#x3D;&#39;#{app_id}&#39;)")
      |> add_param(:body, :body, microsoft_graph_application)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphApplication},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update logo for application in applications
  The main logo for the application. Not nullable.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `application_id` (String.t): The unique identifier of application
  - `body` (String.t): New media content.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec applications_application_update_logo(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def applications_application_update_logo(connection, application_id, body, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/applications/#{application_id}/logo")
      |> add_param(:body, :body, body)
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
    - `:ConsistencyLevel` (String.t): Indicates the requested consistency level. Documentation URL: https://docs.microsoft.com/graph/aad-advanced-queries
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec applications_get_count8398(Tesla.Env.client(), keyword()) ::
          {:ok, Integer.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def applications_get_count8398(connection, opts \\ []) do
    optional_params = %{
      :ConsistencyLevel => :headers,
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/applications/$count")
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
