# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.DeviceManagementUserExperienceAnalyticsAppHealthOSVersionPerformance do
  @moduledoc """
  API calls for all endpoints tagged `DeviceManagementUserExperienceAnalyticsAppHealthOSVersionPerformance`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Create new navigation property to userExperienceAnalyticsAppHealthOSVersionPerformance for deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_user_experience_analytics_app_health_os_version_performance` (MicrosoftGraphUserExperienceAnalyticsAppHealthOsVersionPerformance): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsAppHealthOsVersionPerformance.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_create_user_experience_analytics_app_health_os_version_performance(
          Tesla.Env.client(),
          MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsAppHealthOsVersionPerformance.t(),
          keyword()
        ) ::
          {:ok,
           MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsAppHealthOsVersionPerformance.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_create_user_experience_analytics_app_health_os_version_performance(
        connection,
        microsoft_graph_user_experience_analytics_app_health_os_version_performance,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/deviceManagement/userExperienceAnalyticsAppHealthOSVersionPerformance")
      |> add_param(
        :body,
        :body,
        microsoft_graph_user_experience_analytics_app_health_os_version_performance
      )
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX",
       MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsAppHealthOsVersionPerformance},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete navigation property userExperienceAnalyticsAppHealthOSVersionPerformance for deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_app_health_os_version_performance_id` (String.t): The unique identifier of userExperienceAnalyticsAppHealthOSVersionPerformance
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_delete_user_experience_analytics_app_health_os_version_performance(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_delete_user_experience_analytics_app_health_os_version_performance(
        connection,
        user_experience_analytics_app_health_os_version_performance_id,
        opts \\ []
      ) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url(
        "/deviceManagement/userExperienceAnalyticsAppHealthOSVersionPerformance/#{user_experience_analytics_app_health_os_version_performance_id}"
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
  Get userExperienceAnalyticsAppHealthOSVersionPerformance from deviceManagement
  User experience analytics appHealth OS version Performance

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_app_health_os_version_performance_id` (String.t): The unique identifier of userExperienceAnalyticsAppHealthOSVersionPerformance
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsAppHealthOsVersionPerformance.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_get_user_experience_analytics_app_health_os_version_performance(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok,
           MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsAppHealthOsVersionPerformance.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_get_user_experience_analytics_app_health_os_version_performance(
        connection,
        user_experience_analytics_app_health_os_version_performance_id,
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
        "/deviceManagement/userExperienceAnalyticsAppHealthOSVersionPerformance/#{user_experience_analytics_app_health_os_version_performance_id}"
      )
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX",
       MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsAppHealthOsVersionPerformance},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get userExperienceAnalyticsAppHealthOSVersionPerformance from deviceManagement
  User experience analytics appHealth OS version Performance

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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsAppHealthOsVersionPerformanceCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_list_user_experience_analytics_app_health_os_version_performance(
          Tesla.Env.client(),
          keyword()
        ) ::
          {:ok,
           MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsAppHealthOsVersionPerformanceCollectionResponse.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_list_user_experience_analytics_app_health_os_version_performance(
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
      |> url("/deviceManagement/userExperienceAnalyticsAppHealthOSVersionPerformance")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX",
       MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsAppHealthOsVersionPerformanceCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update the navigation property userExperienceAnalyticsAppHealthOSVersionPerformance in deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_app_health_os_version_performance_id` (String.t): The unique identifier of userExperienceAnalyticsAppHealthOSVersionPerformance
  - `microsoft_graph_user_experience_analytics_app_health_os_version_performance` (MicrosoftGraphUserExperienceAnalyticsAppHealthOsVersionPerformance): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsAppHealthOsVersionPerformance.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_update_user_experience_analytics_app_health_os_version_performance(
          Tesla.Env.client(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsAppHealthOsVersionPerformance.t(),
          keyword()
        ) ::
          {:ok,
           MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsAppHealthOsVersionPerformance.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_update_user_experience_analytics_app_health_os_version_performance(
        connection,
        user_experience_analytics_app_health_os_version_performance_id,
        microsoft_graph_user_experience_analytics_app_health_os_version_performance,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url(
        "/deviceManagement/userExperienceAnalyticsAppHealthOSVersionPerformance/#{user_experience_analytics_app_health_os_version_performance_id}"
      )
      |> add_param(
        :body,
        :body,
        microsoft_graph_user_experience_analytics_app_health_os_version_performance
      )
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX",
       MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsAppHealthOsVersionPerformance},
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
  @spec device_management_user_experience_analytics_app_health_os_version_performance_get_count_d1f0(
          Tesla.Env.client(),
          keyword()
        ) ::
          {:ok, Integer.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_user_experience_analytics_app_health_os_version_performance_get_count_d1f0(
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
      |> url("/deviceManagement/userExperienceAnalyticsAppHealthOSVersionPerformance/$count")
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
