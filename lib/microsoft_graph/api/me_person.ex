# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.MePerson do
  @moduledoc """
  API calls for all endpoints tagged `MePerson`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Get people from me
  People that are relevant to the user. Read-only. Nullable.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `person_id` (String.t): The unique identifier of person
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPerson.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec me_get_people(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphPerson.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def me_get_people(connection, person_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/me/people/#{person_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPerson},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  List people
  Retrieve a collection of person objects ordered by their relevance to the user, which is determined by the user's communication and collaboration patterns, and business relationships. You can get this information via the People API. For examples, see the Examples section and the article Use the People API to get information about the people most relevant to you. This API is available in the following national cloud deployments.

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

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPersonCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec me_list_people(Tesla.Env.client, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphPersonCollectionResponse.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def me_list_people(connection, opts \\ []) do
    optional_params = %{
      :"$top" => :query,
      :"$skip" => :query,
      :"$search" => :query,
      :"$filter" => :query,
      :"$count" => :query,
      :"$orderby" => :query,
      :"$select" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/me/people")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPersonCollectionResponse},
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
  @spec me_people_get_count_eaef(Tesla.Env.client, keyword()) :: {:ok, Integer.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def me_people_get_count_eaef(connection, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/me/people/$count")
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