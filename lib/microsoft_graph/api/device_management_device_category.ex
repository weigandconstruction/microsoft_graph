# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.DeviceManagementDeviceCategory do
  @moduledoc """
  API calls for all endpoints tagged `DeviceManagementDeviceCategory`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Create deviceCategory
  Create a new deviceCategory object.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_device_category` (MicrosoftGraphDeviceCategory): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceCategory.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_create_device_categories(
          Tesla.Env.client(),
          MicrosoftGraph.Model.MicrosoftGraphDeviceCategory.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceCategory.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_create_device_categories(
        connection,
        microsoft_graph_device_category,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/deviceManagement/deviceCategories")
      |> add_param(:body, :body, microsoft_graph_device_category)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDeviceCategory},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete deviceCategory
  Deletes a deviceCategory.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `device_category_id` (String.t): The unique identifier of deviceCategory
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_delete_device_categories(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_delete_device_categories(connection, device_category_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/deviceManagement/deviceCategories/#{device_category_id}")
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
  - `opts` (keyword): Optional parameters
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_device_categories_get_count_ed54(Tesla.Env.client(), keyword()) ::
          {:ok, Integer.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_device_categories_get_count_ed54(connection, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/deviceCategories/$count")
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
  Get deviceCategory
  Read properties and relationships of the deviceCategory object.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `device_category_id` (String.t): The unique identifier of deviceCategory
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceCategory.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_get_device_categories(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceCategory.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_get_device_categories(connection, device_category_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/deviceCategories/#{device_category_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDeviceCategory},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  List deviceCategories
  List properties and relationships of the deviceCategory objects.

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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceCategoryCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_list_device_categories(Tesla.Env.client(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceCategoryCollectionResponse.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_list_device_categories(connection, opts \\ []) do
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
      |> url("/deviceManagement/deviceCategories")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDeviceCategoryCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update deviceCategory
  Update the properties of a deviceCategory object.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `device_category_id` (String.t): The unique identifier of deviceCategory
  - `microsoft_graph_device_category` (MicrosoftGraphDeviceCategory): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceCategory.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_update_device_categories(
          Tesla.Env.client(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphDeviceCategory.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceCategory.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_update_device_categories(
        connection,
        device_category_id,
        microsoft_graph_device_category,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/deviceManagement/deviceCategories/#{device_category_id}")
      |> add_param(:body, :body, microsoft_graph_device_category)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDeviceCategory},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end
