# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.DeviceManagementDeviceAndAppManagementRoleAssignment do
  @moduledoc """
  API calls for all endpoints tagged `DeviceManagementDeviceAndAppManagementRoleAssignment`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Create deviceAndAppManagementRoleAssignment
  Create a new deviceAndAppManagementRoleAssignment object.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_device_and_app_management_role_assignment` (MicrosoftGraphDeviceAndAppManagementRoleAssignment): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceAndAppManagementRoleAssignment.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_create_role_assignments(
          Tesla.Env.client(),
          MicrosoftGraph.Model.MicrosoftGraphDeviceAndAppManagementRoleAssignment.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceAndAppManagementRoleAssignment.t()}
          | {:error, Tesla.Env.t()}
  def device_management_create_role_assignments(
        connection,
        microsoft_graph_device_and_app_management_role_assignment,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/deviceManagement/roleAssignments")
      |> add_param(:body, :body, microsoft_graph_device_and_app_management_role_assignment)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDeviceAndAppManagementRoleAssignment},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete deviceAndAppManagementRoleAssignment
  Deletes a deviceAndAppManagementRoleAssignment.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `device_and_app_management_role_assignment_id` (String.t): The unique identifier of deviceAndAppManagementRoleAssignment
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_delete_role_assignments(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_delete_role_assignments(
        connection,
        device_and_app_management_role_assignment_id,
        opts \\ []
      ) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/deviceManagement/roleAssignments/#{device_and_app_management_role_assignment_id}")
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
  Get deviceAndAppManagementRoleAssignment
  Read properties and relationships of the deviceAndAppManagementRoleAssignment object.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `device_and_app_management_role_assignment_id` (String.t): The unique identifier of deviceAndAppManagementRoleAssignment
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceAndAppManagementRoleAssignment.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_get_role_assignments(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceAndAppManagementRoleAssignment.t()}
          | {:error, Tesla.Env.t()}
  def device_management_get_role_assignments(
        connection,
        device_and_app_management_role_assignment_id,
        opts \\ []
      ) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/roleAssignments/#{device_and_app_management_role_assignment_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDeviceAndAppManagementRoleAssignment},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  List deviceAndAppManagementRoleAssignments
  List properties and relationships of the deviceAndAppManagementRoleAssignment objects.

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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceAndAppManagementRoleAssignmentCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_list_role_assignments(Tesla.Env.client(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok,
             MicrosoftGraph.Model.MicrosoftGraphDeviceAndAppManagementRoleAssignmentCollectionResponse.t()}
          | {:error, Tesla.Env.t()}
  def device_management_list_role_assignments(connection, opts \\ []) do
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
      |> url("/deviceManagement/roleAssignments")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX",
       MicrosoftGraph.Model.MicrosoftGraphDeviceAndAppManagementRoleAssignmentCollectionResponse},
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
  @spec device_management_role_assignments_get_count13e6(Tesla.Env.client(), keyword()) ::
          {:ok, Integer.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_role_assignments_get_count13e6(connection, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/roleAssignments/$count")
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
  Get roleDefinition from deviceManagement
  Role definition this assignment is part of.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `device_and_app_management_role_assignment_id` (String.t): The unique identifier of deviceAndAppManagementRoleAssignment
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphRoleDefinition.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_role_assignments_get_role_definition(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphRoleDefinition.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_role_assignments_get_role_definition(
        connection,
        device_and_app_management_role_assignment_id,
        opts \\ []
      ) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url(
        "/deviceManagement/roleAssignments/#{device_and_app_management_role_assignment_id}/roleDefinition"
      )
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphRoleDefinition},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update deviceAndAppManagementRoleAssignment
  Update the properties of a deviceAndAppManagementRoleAssignment object.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `device_and_app_management_role_assignment_id` (String.t): The unique identifier of deviceAndAppManagementRoleAssignment
  - `microsoft_graph_device_and_app_management_role_assignment` (MicrosoftGraphDeviceAndAppManagementRoleAssignment): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceAndAppManagementRoleAssignment.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_update_role_assignments(
          Tesla.Env.client(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphDeviceAndAppManagementRoleAssignment.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceAndAppManagementRoleAssignment.t()}
          | {:error, Tesla.Env.t()}
  def device_management_update_role_assignments(
        connection,
        device_and_app_management_role_assignment_id,
        microsoft_graph_device_and_app_management_role_assignment,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/deviceManagement/roleAssignments/#{device_and_app_management_role_assignment_id}")
      |> add_param(:body, :body, microsoft_graph_device_and_app_management_role_assignment)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDeviceAndAppManagementRoleAssignment},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end
