# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.DeviceManagementUserExperienceAnalyticsBaseline do
  @moduledoc """
  API calls for all endpoints tagged `DeviceManagementUserExperienceAnalyticsBaseline`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Create new navigation property to userExperienceAnalyticsBaselines for deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_user_experience_analytics_baseline` (MicrosoftGraphUserExperienceAnalyticsBaseline): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsBaseline.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_create_user_experience_analytics_baselines(Tesla.Env.client, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsBaseline.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsBaseline.t} | {:error, Tesla.Env.t}
  def device_management_create_user_experience_analytics_baselines(connection, microsoft_graph_user_experience_analytics_baseline, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/deviceManagement/userExperienceAnalyticsBaselines")
      |> add_param(:body, :body, microsoft_graph_user_experience_analytics_baseline)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsBaseline},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete navigation property userExperienceAnalyticsBaselines for deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_baseline_id` (String.t): The unique identifier of userExperienceAnalyticsBaseline
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_delete_user_experience_analytics_baselines(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def device_management_delete_user_experience_analytics_baselines(connection, user_experience_analytics_baseline_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/deviceManagement/userExperienceAnalyticsBaselines/#{user_experience_analytics_baseline_id}")
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
  Get userExperienceAnalyticsBaselines from deviceManagement
  User experience analytics baselines

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_baseline_id` (String.t): The unique identifier of userExperienceAnalyticsBaseline
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsBaseline.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_get_user_experience_analytics_baselines(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsBaseline.t} | {:error, Tesla.Env.t}
  def device_management_get_user_experience_analytics_baselines(connection, user_experience_analytics_baseline_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/userExperienceAnalyticsBaselines/#{user_experience_analytics_baseline_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsBaseline},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get userExperienceAnalyticsBaselines from deviceManagement
  User experience analytics baselines

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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsBaselineCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_list_user_experience_analytics_baselines(Tesla.Env.client, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsBaselineCollectionResponse.t} | {:error, Tesla.Env.t}
  def device_management_list_user_experience_analytics_baselines(connection, opts \\ []) do
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
      |> url("/deviceManagement/userExperienceAnalyticsBaselines")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsBaselineCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update the navigation property userExperienceAnalyticsBaselines in deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_baseline_id` (String.t): The unique identifier of userExperienceAnalyticsBaseline
  - `microsoft_graph_user_experience_analytics_baseline` (MicrosoftGraphUserExperienceAnalyticsBaseline): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsBaseline.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_update_user_experience_analytics_baselines(Tesla.Env.client, String.t, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsBaseline.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsBaseline.t} | {:error, Tesla.Env.t}
  def device_management_update_user_experience_analytics_baselines(connection, user_experience_analytics_baseline_id, microsoft_graph_user_experience_analytics_baseline, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/deviceManagement/userExperienceAnalyticsBaselines/#{user_experience_analytics_baseline_id}")
      |> add_param(:body, :body, microsoft_graph_user_experience_analytics_baseline)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsBaseline},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get appHealthMetrics from deviceManagement
  The scores and insights for the application health metrics.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_baseline_id` (String.t): The unique identifier of userExperienceAnalyticsBaseline
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_user_experience_analytics_baselines_get_app_health_metrics(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t} | {:error, Tesla.Env.t}
  def device_management_user_experience_analytics_baselines_get_app_health_metrics(connection, user_experience_analytics_baseline_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/userExperienceAnalyticsBaselines/#{user_experience_analytics_baseline_id}/appHealthMetrics")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get batteryHealthMetrics from deviceManagement
  The scores and insights for the battery health metrics.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_baseline_id` (String.t): The unique identifier of userExperienceAnalyticsBaseline
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_user_experience_analytics_baselines_get_battery_health_metrics(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t} | {:error, Tesla.Env.t}
  def device_management_user_experience_analytics_baselines_get_battery_health_metrics(connection, user_experience_analytics_baseline_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/userExperienceAnalyticsBaselines/#{user_experience_analytics_baseline_id}/batteryHealthMetrics")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get bestPracticesMetrics from deviceManagement
  The scores and insights for the best practices metrics.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_baseline_id` (String.t): The unique identifier of userExperienceAnalyticsBaseline
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_user_experience_analytics_baselines_get_best_practices_metrics(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t} | {:error, Tesla.Env.t}
  def device_management_user_experience_analytics_baselines_get_best_practices_metrics(connection, user_experience_analytics_baseline_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/userExperienceAnalyticsBaselines/#{user_experience_analytics_baseline_id}/bestPracticesMetrics")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory},
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
  @spec device_management_user_experience_analytics_baselines_get_count_cb93(Tesla.Env.client, keyword()) :: {:ok, Integer.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def device_management_user_experience_analytics_baselines_get_count_cb93(connection, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/userExperienceAnalyticsBaselines/$count")
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
  Get deviceBootPerformanceMetrics from deviceManagement
  The scores and insights for the device boot performance metrics.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_baseline_id` (String.t): The unique identifier of userExperienceAnalyticsBaseline
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_user_experience_analytics_baselines_get_device_boot_performance_metrics(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t} | {:error, Tesla.Env.t}
  def device_management_user_experience_analytics_baselines_get_device_boot_performance_metrics(connection, user_experience_analytics_baseline_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/userExperienceAnalyticsBaselines/#{user_experience_analytics_baseline_id}/deviceBootPerformanceMetrics")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get rebootAnalyticsMetrics from deviceManagement
  The scores and insights for the reboot analytics metrics.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_baseline_id` (String.t): The unique identifier of userExperienceAnalyticsBaseline
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_user_experience_analytics_baselines_get_reboot_analytics_metrics(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t} | {:error, Tesla.Env.t}
  def device_management_user_experience_analytics_baselines_get_reboot_analytics_metrics(connection, user_experience_analytics_baseline_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/userExperienceAnalyticsBaselines/#{user_experience_analytics_baseline_id}/rebootAnalyticsMetrics")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get resourcePerformanceMetrics from deviceManagement
  The scores and insights for the resource performance metrics.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_baseline_id` (String.t): The unique identifier of userExperienceAnalyticsBaseline
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_user_experience_analytics_baselines_get_resource_performance_metrics(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t} | {:error, Tesla.Env.t}
  def device_management_user_experience_analytics_baselines_get_resource_performance_metrics(connection, user_experience_analytics_baseline_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/userExperienceAnalyticsBaselines/#{user_experience_analytics_baseline_id}/resourcePerformanceMetrics")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get workFromAnywhereMetrics from deviceManagement
  The scores and insights for the work from anywhere metrics.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_baseline_id` (String.t): The unique identifier of userExperienceAnalyticsBaseline
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_user_experience_analytics_baselines_get_work_from_anywhere_metrics(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t} | {:error, Tesla.Env.t}
  def device_management_user_experience_analytics_baselines_get_work_from_anywhere_metrics(connection, user_experience_analytics_baseline_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/userExperienceAnalyticsBaselines/#{user_experience_analytics_baseline_id}/workFromAnywhereMetrics")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end