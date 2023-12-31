# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.ExternalExternal do
  @moduledoc """
  API calls for all endpoints tagged `ExternalExternal`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Get external

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternal.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec external_external_get_external(Tesla.Env.client(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternal.t()}
          | {:error, Tesla.Env.t()}
  def external_external_get_external(connection, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/external")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternal},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update external

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_external_connectors_external` (MicrosoftGraphExternalConnectorsExternal): New property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternal.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec external_external_update_external(
          Tesla.Env.client(),
          MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternal.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternal.t()}
          | {:error, Tesla.Env.t()}
  def external_external_update_external(
        connection,
        microsoft_graph_external_connectors_external,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/external")
      |> add_param(:body, :body, microsoft_graph_external_connectors_external)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternal},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end
