# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.SearchSearchEntity do
  @moduledoc """
  API calls for all endpoints tagged `SearchSearchEntity`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Get search

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphSearchEntity.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec search_search_entity_get_search_entity(Tesla.Env.client, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphSearchEntity.t} | {:error, Tesla.Env.t}
  def search_search_entity_get_search_entity(connection, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/search")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphSearchEntity},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update search

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_search_entity` (MicrosoftGraphSearchEntity): New property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphSearchEntity.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec search_search_entity_update_search_entity(Tesla.Env.client, MicrosoftGraph.Model.MicrosoftGraphSearchEntity.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphSearchEntity.t} | {:error, Tesla.Env.t}
  def search_search_entity_update_search_entity(connection, microsoft_graph_search_entity, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/search")
      |> add_param(:body, :body, microsoft_graph_search_entity)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphSearchEntity},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end