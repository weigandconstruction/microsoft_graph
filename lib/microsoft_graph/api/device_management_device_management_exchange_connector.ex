# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.DeviceManagementDeviceManagementExchangeConnector do
  @moduledoc """
  API calls for all endpoints tagged `DeviceManagementDeviceManagementExchangeConnector`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Create deviceManagementExchangeConnector
  Create a new deviceManagementExchangeConnector object.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_device_management_exchange_connector` (MicrosoftGraphDeviceManagementExchangeConnector): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExchangeConnector.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_create_exchange_connectors(
          Tesla.Env.client(),
          MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExchangeConnector.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExchangeConnector.t()}
          | {:error, Tesla.Env.t()}
  def device_management_create_exchange_connectors(
        connection,
        microsoft_graph_device_management_exchange_connector,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/deviceManagement/exchangeConnectors")
      |> add_param(:body, :body, microsoft_graph_device_management_exchange_connector)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExchangeConnector},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete deviceManagementExchangeConnector
  Deletes a deviceManagementExchangeConnector.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `device_management_exchange_connector_id` (String.t): The unique identifier of deviceManagementExchangeConnector
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_delete_exchange_connectors(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_delete_exchange_connectors(
        connection,
        device_management_exchange_connector_id,
        opts \\ []
      ) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/deviceManagement/exchangeConnectors/#{device_management_exchange_connector_id}")
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
  @spec device_management_exchange_connectors_get_count7e43(Tesla.Env.client(), keyword()) ::
          {:ok, Integer.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_exchange_connectors_get_count7e43(connection, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/exchangeConnectors/$count")
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
  Get deviceManagementExchangeConnector
  Read properties and relationships of the deviceManagementExchangeConnector object.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `device_management_exchange_connector_id` (String.t): The unique identifier of deviceManagementExchangeConnector
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExchangeConnector.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_get_exchange_connectors(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExchangeConnector.t()}
          | {:error, Tesla.Env.t()}
  def device_management_get_exchange_connectors(
        connection,
        device_management_exchange_connector_id,
        opts \\ []
      ) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/exchangeConnectors/#{device_management_exchange_connector_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExchangeConnector},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  List deviceManagementExchangeConnectors
  List properties and relationships of the deviceManagementExchangeConnector objects.

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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExchangeConnectorCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_list_exchange_connectors(Tesla.Env.client(), keyword()) ::
          {:ok,
           MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExchangeConnectorCollectionResponse.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_list_exchange_connectors(connection, opts \\ []) do
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
      |> url("/deviceManagement/exchangeConnectors")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX",
       MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExchangeConnectorCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update deviceManagementExchangeConnector
  Update the properties of a deviceManagementExchangeConnector object.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `device_management_exchange_connector_id` (String.t): The unique identifier of deviceManagementExchangeConnector
  - `microsoft_graph_device_management_exchange_connector` (MicrosoftGraphDeviceManagementExchangeConnector): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExchangeConnector.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_update_exchange_connectors(
          Tesla.Env.client(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExchangeConnector.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExchangeConnector.t()}
          | {:error, Tesla.Env.t()}
  def device_management_update_exchange_connectors(
        connection,
        device_management_exchange_connector_id,
        microsoft_graph_device_management_exchange_connector,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/deviceManagement/exchangeConnectors/#{device_management_exchange_connector_id}")
      |> add_param(:body, :body, microsoft_graph_device_management_exchange_connector)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExchangeConnector},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end
