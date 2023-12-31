# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.GroupsGroupLifecyclePolicy do
  @moduledoc """
  API calls for all endpoints tagged `GroupsGroupLifecyclePolicy`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Create new navigation property to groupLifecyclePolicies for groups

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `group_id` (String.t): The unique identifier of group
  - `microsoft_graph_group_lifecycle_policy` (MicrosoftGraphGroupLifecyclePolicy): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphGroupLifecyclePolicy.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec groups_create_group_lifecycle_policies(
          Tesla.Env.client(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphGroupLifecyclePolicy.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphGroupLifecyclePolicy.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def groups_create_group_lifecycle_policies(
        connection,
        group_id,
        microsoft_graph_group_lifecycle_policy,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/groups/#{group_id}/groupLifecyclePolicies")
      |> add_param(:body, :body, microsoft_graph_group_lifecycle_policy)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphGroupLifecyclePolicy},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete navigation property groupLifecyclePolicies for groups

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `group_id` (String.t): The unique identifier of group
  - `group_lifecycle_policy_id` (String.t): The unique identifier of groupLifecyclePolicy
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec groups_delete_group_lifecycle_policies(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def groups_delete_group_lifecycle_policies(
        connection,
        group_id,
        group_lifecycle_policy_id,
        opts \\ []
      ) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/groups/#{group_id}/groupLifecyclePolicies/#{group_lifecycle_policy_id}")
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
  Get groupLifecyclePolicies from groups
  The collection of lifecycle policies for this group. Read-only. Nullable.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `group_id` (String.t): The unique identifier of group
  - `group_lifecycle_policy_id` (String.t): The unique identifier of groupLifecyclePolicy
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphGroupLifecyclePolicy.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec groups_get_group_lifecycle_policies(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphGroupLifecyclePolicy.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def groups_get_group_lifecycle_policies(
        connection,
        group_id,
        group_lifecycle_policy_id,
        opts \\ []
      ) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/groups/#{group_id}/groupLifecyclePolicies/#{group_lifecycle_policy_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphGroupLifecyclePolicy},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get the number of the resource

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `group_id` (String.t): The unique identifier of group
  - `opts` (keyword): Optional parameters
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec groups_group_lifecycle_policies_get_count_ba70(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, Integer.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def groups_group_lifecycle_policies_get_count_ba70(connection, group_id, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/groups/#{group_id}/groupLifecyclePolicies/$count")
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
  List groupLifecyclePolicies
  Retrieves a list of groupLifecyclePolicy objects to which a group belongs. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `group_id` (String.t): The unique identifier of group
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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphGroupLifecyclePolicyCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec groups_list_group_lifecycle_policies(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphGroupLifecyclePolicyCollectionResponse.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def groups_list_group_lifecycle_policies(connection, group_id, opts \\ []) do
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
      |> url("/groups/#{group_id}/groupLifecyclePolicies")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphGroupLifecyclePolicyCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update the navigation property groupLifecyclePolicies in groups

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `group_id` (String.t): The unique identifier of group
  - `group_lifecycle_policy_id` (String.t): The unique identifier of groupLifecyclePolicy
  - `microsoft_graph_group_lifecycle_policy` (MicrosoftGraphGroupLifecyclePolicy): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphGroupLifecyclePolicy.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec groups_update_group_lifecycle_policies(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphGroupLifecyclePolicy.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphGroupLifecyclePolicy.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def groups_update_group_lifecycle_policies(
        connection,
        group_id,
        group_lifecycle_policy_id,
        microsoft_graph_group_lifecycle_policy,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/groups/#{group_id}/groupLifecyclePolicies/#{group_lifecycle_policy_id}")
      |> add_param(:body, :body, microsoft_graph_group_lifecycle_policy)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphGroupLifecyclePolicy},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end
