# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.MeDeviceManagementTroubleshootingEvent do
  @moduledoc """
  API calls for all endpoints tagged `MeDeviceManagementTroubleshootingEvent`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Create new navigation property to deviceManagementTroubleshootingEvents for me

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_device_management_troubleshooting_event` (MicrosoftGraphDeviceManagementTroubleshootingEvent): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementTroubleshootingEvent.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec me_create_device_management_troubleshooting_events(Tesla.Env.client, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementTroubleshootingEvent.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementTroubleshootingEvent.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def me_create_device_management_troubleshooting_events(connection, microsoft_graph_device_management_troubleshooting_event, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/me/deviceManagementTroubleshootingEvents")
      |> add_param(:body, :body, microsoft_graph_device_management_troubleshooting_event)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDeviceManagementTroubleshootingEvent},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete navigation property deviceManagementTroubleshootingEvents for me

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `device_management_troubleshooting_event_id` (String.t): The unique identifier of deviceManagementTroubleshootingEvent
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec me_delete_device_management_troubleshooting_events(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def me_delete_device_management_troubleshooting_events(connection, device_management_troubleshooting_event_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/me/deviceManagementTroubleshootingEvents/#{device_management_troubleshooting_event_id}")
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
  @spec me_device_management_troubleshooting_events_get_count0d38(Tesla.Env.client, keyword()) :: {:ok, Integer.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def me_device_management_troubleshooting_events_get_count0d38(connection, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/me/deviceManagementTroubleshootingEvents/$count")
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
  Get deviceManagementTroubleshootingEvents from me
  The list of troubleshooting events for this user.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `device_management_troubleshooting_event_id` (String.t): The unique identifier of deviceManagementTroubleshootingEvent
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementTroubleshootingEvent.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec me_get_device_management_troubleshooting_events(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementTroubleshootingEvent.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def me_get_device_management_troubleshooting_events(connection, device_management_troubleshooting_event_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/me/deviceManagementTroubleshootingEvents/#{device_management_troubleshooting_event_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDeviceManagementTroubleshootingEvent},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get deviceManagementTroubleshootingEvents from me
  The list of troubleshooting events for this user.

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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementTroubleshootingEventCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec me_list_device_management_troubleshooting_events(Tesla.Env.client, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementTroubleshootingEventCollectionResponse.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def me_list_device_management_troubleshooting_events(connection, opts \\ []) do
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
      |> url("/me/deviceManagementTroubleshootingEvents")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDeviceManagementTroubleshootingEventCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update the navigation property deviceManagementTroubleshootingEvents in me

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `device_management_troubleshooting_event_id` (String.t): The unique identifier of deviceManagementTroubleshootingEvent
  - `microsoft_graph_device_management_troubleshooting_event` (MicrosoftGraphDeviceManagementTroubleshootingEvent): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementTroubleshootingEvent.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec me_update_device_management_troubleshooting_events(Tesla.Env.client, String.t, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementTroubleshootingEvent.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementTroubleshootingEvent.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def me_update_device_management_troubleshooting_events(connection, device_management_troubleshooting_event_id, microsoft_graph_device_management_troubleshooting_event, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/me/deviceManagementTroubleshootingEvents/#{device_management_troubleshooting_event_id}")
      |> add_param(:body, :body, microsoft_graph_device_management_troubleshooting_event)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDeviceManagementTroubleshootingEvent},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end