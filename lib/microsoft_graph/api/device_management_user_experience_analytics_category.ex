# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.DeviceManagementUserExperienceAnalyticsCategory do
  @moduledoc """
  API calls for all endpoints tagged `DeviceManagementUserExperienceAnalyticsCategory`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Create new navigation property to userExperienceAnalyticsCategories for deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_user_experience_analytics_category` (MicrosoftGraphUserExperienceAnalyticsCategory): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_create_user_experience_analytics_categories(
          Tesla.Env.client(),
          MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t()}
          | {:error, Tesla.Env.t()}
  def device_management_create_user_experience_analytics_categories(
        connection,
        microsoft_graph_user_experience_analytics_category,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/deviceManagement/userExperienceAnalyticsCategories")
      |> add_param(:body, :body, microsoft_graph_user_experience_analytics_category)
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
  Delete navigation property userExperienceAnalyticsAppHealthOverview for deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_delete_user_experience_analytics_app_health_overview(
          Tesla.Env.client(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_delete_user_experience_analytics_app_health_overview(
        connection,
        opts \\ []
      ) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/deviceManagement/userExperienceAnalyticsAppHealthOverview")
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
  Delete navigation property userExperienceAnalyticsCategories for deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_category_id` (String.t): The unique identifier of userExperienceAnalyticsCategory
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_delete_user_experience_analytics_categories(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_delete_user_experience_analytics_categories(
        connection,
        user_experience_analytics_category_id,
        opts \\ []
      ) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url(
        "/deviceManagement/userExperienceAnalyticsCategories/#{user_experience_analytics_category_id}"
      )
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
  Get userExperienceAnalyticsAppHealthOverview from deviceManagement
  User experience analytics appHealth overview

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_get_user_experience_analytics_app_health_overview(
          Tesla.Env.client(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t()}
          | {:error, Tesla.Env.t()}
  def device_management_get_user_experience_analytics_app_health_overview(connection, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/userExperienceAnalyticsAppHealthOverview")
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
  Get userExperienceAnalyticsCategories from deviceManagement
  User experience analytics categories

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_category_id` (String.t): The unique identifier of userExperienceAnalyticsCategory
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_get_user_experience_analytics_categories(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t()}
          | {:error, Tesla.Env.t()}
  def device_management_get_user_experience_analytics_categories(
        connection,
        user_experience_analytics_category_id,
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
        "/deviceManagement/userExperienceAnalyticsCategories/#{user_experience_analytics_category_id}"
      )
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
  Get userExperienceAnalyticsCategories from deviceManagement
  User experience analytics categories

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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategoryCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_list_user_experience_analytics_categories(Tesla.Env.client(), keyword()) ::
          {:ok,
           MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategoryCollectionResponse.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_list_user_experience_analytics_categories(connection, opts \\ []) do
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
      |> url("/deviceManagement/userExperienceAnalyticsCategories")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX",
       MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategoryCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update the navigation property userExperienceAnalyticsAppHealthOverview in deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_user_experience_analytics_category` (MicrosoftGraphUserExperienceAnalyticsCategory): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_update_user_experience_analytics_app_health_overview(
          Tesla.Env.client(),
          MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t()}
          | {:error, Tesla.Env.t()}
  def device_management_update_user_experience_analytics_app_health_overview(
        connection,
        microsoft_graph_user_experience_analytics_category,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/deviceManagement/userExperienceAnalyticsAppHealthOverview")
      |> add_param(:body, :body, microsoft_graph_user_experience_analytics_category)
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
  Update the navigation property userExperienceAnalyticsCategories in deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_category_id` (String.t): The unique identifier of userExperienceAnalyticsCategory
  - `microsoft_graph_user_experience_analytics_category` (MicrosoftGraphUserExperienceAnalyticsCategory): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_update_user_experience_analytics_categories(
          Tesla.Env.client(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsCategory.t()}
          | {:error, Tesla.Env.t()}
  def device_management_update_user_experience_analytics_categories(
        connection,
        user_experience_analytics_category_id,
        microsoft_graph_user_experience_analytics_category,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url(
        "/deviceManagement/userExperienceAnalyticsCategories/#{user_experience_analytics_category_id}"
      )
      |> add_param(:body, :body, microsoft_graph_user_experience_analytics_category)
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
  Create new navigation property to metricValues for deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_user_experience_analytics_metric` (MicrosoftGraphUserExperienceAnalyticsMetric): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_user_experience_analytics_app_health_overview_create_metric_values(
          Tesla.Env.client(),
          MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_user_experience_analytics_app_health_overview_create_metric_values(
        connection,
        microsoft_graph_user_experience_analytics_metric,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/deviceManagement/userExperienceAnalyticsAppHealthOverview/metricValues")
      |> add_param(:body, :body, microsoft_graph_user_experience_analytics_metric)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete navigation property metricValues for deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_metric_id` (String.t): The unique identifier of userExperienceAnalyticsMetric
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_user_experience_analytics_app_health_overview_delete_metric_values(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_user_experience_analytics_app_health_overview_delete_metric_values(
        connection,
        user_experience_analytics_metric_id,
        opts \\ []
      ) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url(
        "/deviceManagement/userExperienceAnalyticsAppHealthOverview/metricValues/#{user_experience_analytics_metric_id}"
      )
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
  Get metricValues from deviceManagement
  The metric values for the user experience analytics category. Read-only.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_metric_id` (String.t): The unique identifier of userExperienceAnalyticsMetric
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_user_experience_analytics_app_health_overview_get_metric_values(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_user_experience_analytics_app_health_overview_get_metric_values(
        connection,
        user_experience_analytics_metric_id,
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
        "/deviceManagement/userExperienceAnalyticsAppHealthOverview/metricValues/#{user_experience_analytics_metric_id}"
      )
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get metricValues from deviceManagement
  The metric values for the user experience analytics category. Read-only.

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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetricCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_user_experience_analytics_app_health_overview_list_metric_values(
          Tesla.Env.client(),
          keyword()
        ) ::
          {:ok,
           MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetricCollectionResponse.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_user_experience_analytics_app_health_overview_list_metric_values(
        connection,
        opts \\ []
      ) do
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
      |> url("/deviceManagement/userExperienceAnalyticsAppHealthOverview/metricValues")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetricCollectionResponse},
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
  @spec device_management_user_experience_analytics_app_health_overview_metric_values_get_count8e50(
          Tesla.Env.client(),
          keyword()
        ) ::
          {:ok, Integer.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_user_experience_analytics_app_health_overview_metric_values_get_count8e50(
        connection,
        opts \\ []
      ) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/userExperienceAnalyticsAppHealthOverview/metricValues/$count")
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
  Update the navigation property metricValues in deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_metric_id` (String.t): The unique identifier of userExperienceAnalyticsMetric
  - `microsoft_graph_user_experience_analytics_metric` (MicrosoftGraphUserExperienceAnalyticsMetric): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_user_experience_analytics_app_health_overview_update_metric_values(
          Tesla.Env.client(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_user_experience_analytics_app_health_overview_update_metric_values(
        connection,
        user_experience_analytics_metric_id,
        microsoft_graph_user_experience_analytics_metric,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url(
        "/deviceManagement/userExperienceAnalyticsAppHealthOverview/metricValues/#{user_experience_analytics_metric_id}"
      )
      |> add_param(:body, :body, microsoft_graph_user_experience_analytics_metric)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Create new navigation property to metricValues for deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_category_id` (String.t): The unique identifier of userExperienceAnalyticsCategory
  - `microsoft_graph_user_experience_analytics_metric` (MicrosoftGraphUserExperienceAnalyticsMetric): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_user_experience_analytics_categories_create_metric_values(
          Tesla.Env.client(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_user_experience_analytics_categories_create_metric_values(
        connection,
        user_experience_analytics_category_id,
        microsoft_graph_user_experience_analytics_metric,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url(
        "/deviceManagement/userExperienceAnalyticsCategories/#{user_experience_analytics_category_id}/metricValues"
      )
      |> add_param(:body, :body, microsoft_graph_user_experience_analytics_metric)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete navigation property metricValues for deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_category_id` (String.t): The unique identifier of userExperienceAnalyticsCategory
  - `user_experience_analytics_metric_id` (String.t): The unique identifier of userExperienceAnalyticsMetric
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_user_experience_analytics_categories_delete_metric_values(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_user_experience_analytics_categories_delete_metric_values(
        connection,
        user_experience_analytics_category_id,
        user_experience_analytics_metric_id,
        opts \\ []
      ) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url(
        "/deviceManagement/userExperienceAnalyticsCategories/#{user_experience_analytics_category_id}/metricValues/#{user_experience_analytics_metric_id}"
      )
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
  @spec device_management_user_experience_analytics_categories_get_count6bb5(
          Tesla.Env.client(),
          keyword()
        ) ::
          {:ok, Integer.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_user_experience_analytics_categories_get_count6bb5(connection, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/userExperienceAnalyticsCategories/$count")
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
  Get metricValues from deviceManagement
  The metric values for the user experience analytics category. Read-only.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_category_id` (String.t): The unique identifier of userExperienceAnalyticsCategory
  - `user_experience_analytics_metric_id` (String.t): The unique identifier of userExperienceAnalyticsMetric
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_user_experience_analytics_categories_get_metric_values(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_user_experience_analytics_categories_get_metric_values(
        connection,
        user_experience_analytics_category_id,
        user_experience_analytics_metric_id,
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
        "/deviceManagement/userExperienceAnalyticsCategories/#{user_experience_analytics_category_id}/metricValues/#{user_experience_analytics_metric_id}"
      )
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get metricValues from deviceManagement
  The metric values for the user experience analytics category. Read-only.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_category_id` (String.t): The unique identifier of userExperienceAnalyticsCategory
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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetricCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_user_experience_analytics_categories_list_metric_values(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok,
           MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetricCollectionResponse.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_user_experience_analytics_categories_list_metric_values(
        connection,
        user_experience_analytics_category_id,
        opts \\ []
      ) do
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
      |> url(
        "/deviceManagement/userExperienceAnalyticsCategories/#{user_experience_analytics_category_id}/metricValues"
      )
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetricCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get the number of the resource

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_category_id` (String.t): The unique identifier of userExperienceAnalyticsCategory
  - `opts` (keyword): Optional parameters
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_user_experience_analytics_categories_metric_values_get_count_a34c(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, Integer.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_user_experience_analytics_categories_metric_values_get_count_a34c(
        connection,
        user_experience_analytics_category_id,
        opts \\ []
      ) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url(
        "/deviceManagement/userExperienceAnalyticsCategories/#{user_experience_analytics_category_id}/metricValues/$count"
      )
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
  Update the navigation property metricValues in deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_category_id` (String.t): The unique identifier of userExperienceAnalyticsCategory
  - `user_experience_analytics_metric_id` (String.t): The unique identifier of userExperienceAnalyticsMetric
  - `microsoft_graph_user_experience_analytics_metric` (MicrosoftGraphUserExperienceAnalyticsMetric): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_user_experience_analytics_categories_update_metric_values(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_user_experience_analytics_categories_update_metric_values(
        connection,
        user_experience_analytics_category_id,
        user_experience_analytics_metric_id,
        microsoft_graph_user_experience_analytics_metric,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url(
        "/deviceManagement/userExperienceAnalyticsCategories/#{user_experience_analytics_category_id}/metricValues/#{user_experience_analytics_metric_id}"
      )
      |> add_param(:body, :body, microsoft_graph_user_experience_analytics_metric)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsMetric},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end
