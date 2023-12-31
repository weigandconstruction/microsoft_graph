# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.AppCatalogsAppCatalogs do
  @moduledoc """
  API calls for all endpoints tagged `AppCatalogsAppCatalogs`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Get appCatalogs

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphAppCatalogs.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec app_catalogs_app_catalogs_get_app_catalogs(Tesla.Env.client(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphAppCatalogs.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def app_catalogs_app_catalogs_get_app_catalogs(connection, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/appCatalogs")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphAppCatalogs},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update appCatalogs

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_app_catalogs` (MicrosoftGraphAppCatalogs): New property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphAppCatalogs.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec app_catalogs_app_catalogs_update_app_catalogs(
          Tesla.Env.client(),
          MicrosoftGraph.Model.MicrosoftGraphAppCatalogs.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphAppCatalogs.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def app_catalogs_app_catalogs_update_app_catalogs(
        connection,
        microsoft_graph_app_catalogs,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/appCatalogs")
      |> add_param(:body, :body, microsoft_graph_app_catalogs)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphAppCatalogs},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end
