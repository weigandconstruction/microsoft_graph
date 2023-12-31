# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.GroupSettingsGroupSetting do
  @moduledoc """
  API calls for all endpoints tagged `GroupSettingsGroupSetting`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

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
  @spec group_settings_get_count_d8de(Tesla.Env.client(), keyword()) ::
          {:ok, Integer.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def group_settings_get_count_d8de(connection, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/groupSettings/$count")
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
  Create settings
  Create a new setting based on the templates available in groupSettingTemplates. These settings can be at the tenant-level or at the group level. Group settings apply to only Microsoft 365 groups. The template named Group.Unified can be used to configure tenant-wide Microsoft 365 group settings, while the template named Group.Unified.Guest can be used to configure group-specific settings. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_group_setting` (MicrosoftGraphGroupSetting): New entity
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphGroupSetting.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec group_settings_group_setting_create_group_setting(
          Tesla.Env.client(),
          MicrosoftGraph.Model.MicrosoftGraphGroupSetting.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphGroupSetting.t()}
          | {:error, Tesla.Env.t()}
  def group_settings_group_setting_create_group_setting(
        connection,
        microsoft_graph_group_setting,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/groupSettings")
      |> add_param(:body, :body, microsoft_graph_group_setting)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphGroupSetting},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete a group setting
  Delete a tenant-level or group-specific groupSetting object. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `group_setting_id` (String.t): The unique identifier of groupSetting
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec group_settings_group_setting_delete_group_setting(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def group_settings_group_setting_delete_group_setting(connection, group_setting_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/groupSettings/#{group_setting_id}")
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
  Get groupSetting
  Retrieve the properties of a specific group setting object. The setting can be a tenant-level or group-specific setting. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `group_setting_id` (String.t): The unique identifier of groupSetting
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphGroupSetting.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec group_settings_group_setting_get_group_setting(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphGroupSetting.t()}
          | {:error, Tesla.Env.t()}
  def group_settings_group_setting_get_group_setting(connection, group_setting_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/groupSettings/#{group_setting_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphGroupSetting},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  List settings
  Retrieve a list of tenant-level or group-specific group settings objects. This API is available in the following national cloud deployments.

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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphGroupSettingCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec group_settings_group_setting_list_group_setting(Tesla.Env.client(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphGroupSettingCollectionResponse.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def group_settings_group_setting_list_group_setting(connection, opts \\ []) do
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
      |> url("/groupSettings")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphGroupSettingCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update groupSetting
  Update the properties of a groupSetting object for tenant-wide group settings or a specific group setting. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `group_setting_id` (String.t): The unique identifier of groupSetting
  - `microsoft_graph_group_setting` (MicrosoftGraphGroupSetting): New property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphGroupSetting.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec group_settings_group_setting_update_group_setting(
          Tesla.Env.client(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphGroupSetting.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphGroupSetting.t()}
          | {:error, Tesla.Env.t()}
  def group_settings_group_setting_update_group_setting(
        connection,
        group_setting_id,
        microsoft_graph_group_setting,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/groupSettings/#{group_setting_id}")
      |> add_param(:body, :body, microsoft_graph_group_setting)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphGroupSetting},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end
