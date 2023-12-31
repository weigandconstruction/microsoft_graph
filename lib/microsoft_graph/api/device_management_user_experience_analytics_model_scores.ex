# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.DeviceManagementUserExperienceAnalyticsModelScores do
  @moduledoc """
  API calls for all endpoints tagged `DeviceManagementUserExperienceAnalyticsModelScores`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Create new navigation property to userExperienceAnalyticsModelScores for deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_user_experience_analytics_model_scores` (MicrosoftGraphUserExperienceAnalyticsModelScores): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsModelScores.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_create_user_experience_analytics_model_scores(
          Tesla.Env.client(),
          MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsModelScores.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsModelScores.t()}
          | {:error, Tesla.Env.t()}
  def device_management_create_user_experience_analytics_model_scores(
        connection,
        microsoft_graph_user_experience_analytics_model_scores,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/deviceManagement/userExperienceAnalyticsModelScores")
      |> add_param(:body, :body, microsoft_graph_user_experience_analytics_model_scores)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsModelScores},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete navigation property userExperienceAnalyticsModelScores for deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_model_scores_id` (String.t): The unique identifier of userExperienceAnalyticsModelScores
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_delete_user_experience_analytics_model_scores(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_delete_user_experience_analytics_model_scores(
        connection,
        user_experience_analytics_model_scores_id,
        opts \\ []
      ) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url(
        "/deviceManagement/userExperienceAnalyticsModelScores/#{user_experience_analytics_model_scores_id}"
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
  Get userExperienceAnalyticsModelScores from deviceManagement
  User experience analytics model scores

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_model_scores_id` (String.t): The unique identifier of userExperienceAnalyticsModelScores
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsModelScores.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_get_user_experience_analytics_model_scores(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsModelScores.t()}
          | {:error, Tesla.Env.t()}
  def device_management_get_user_experience_analytics_model_scores(
        connection,
        user_experience_analytics_model_scores_id,
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
        "/deviceManagement/userExperienceAnalyticsModelScores/#{user_experience_analytics_model_scores_id}"
      )
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsModelScores},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get userExperienceAnalyticsModelScores from deviceManagement
  User experience analytics model scores

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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsModelScoresCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_list_user_experience_analytics_model_scores(
          Tesla.Env.client(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok,
             MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsModelScoresCollectionResponse.t()}
          | {:error, Tesla.Env.t()}
  def device_management_list_user_experience_analytics_model_scores(connection, opts \\ []) do
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
      |> url("/deviceManagement/userExperienceAnalyticsModelScores")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX",
       MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsModelScoresCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update the navigation property userExperienceAnalyticsModelScores in deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `user_experience_analytics_model_scores_id` (String.t): The unique identifier of userExperienceAnalyticsModelScores
  - `microsoft_graph_user_experience_analytics_model_scores` (MicrosoftGraphUserExperienceAnalyticsModelScores): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsModelScores.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_update_user_experience_analytics_model_scores(
          Tesla.Env.client(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsModelScores.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsModelScores.t()}
          | {:error, Tesla.Env.t()}
  def device_management_update_user_experience_analytics_model_scores(
        connection,
        user_experience_analytics_model_scores_id,
        microsoft_graph_user_experience_analytics_model_scores,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url(
        "/deviceManagement/userExperienceAnalyticsModelScores/#{user_experience_analytics_model_scores_id}"
      )
      |> add_param(:body, :body, microsoft_graph_user_experience_analytics_model_scores)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphUserExperienceAnalyticsModelScores},
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
  @spec device_management_user_experience_analytics_model_scores_get_count_aff3(
          Tesla.Env.client(),
          keyword()
        ) ::
          {:ok, Integer.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_user_experience_analytics_model_scores_get_count_aff3(
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
      |> url("/deviceManagement/userExperienceAnalyticsModelScores/$count")
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
