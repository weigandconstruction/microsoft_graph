# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.DirectoryObjectsFunctions do
  @moduledoc """
  API calls for all endpoints tagged `DirectoryObjectsFunctions`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Invoke function delta

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$orderby"` ([String.t]): Order items by property values

  ### Returns

  - `{:ok, MicrosoftGraph.Model.CollectionOfDirectoryObject1.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec directory_objects_delta(Tesla.Env.client(), keyword()) ::
          {:ok, MicrosoftGraph.Model.CollectionOfDirectoryObject1.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def directory_objects_delta(connection, opts \\ []) do
    optional_params = %{
      :"$top" => :query,
      :"$skip" => :query,
      :"$search" => :query,
      :"$filter" => :query,
      :"$count" => :query,
      :"$select" => :query,
      :"$orderby" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/directoryObjects/delta()")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfDirectoryObject1},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end
