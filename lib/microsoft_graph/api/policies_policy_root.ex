# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.PoliciesPolicyRoot do
  @moduledoc """
  API calls for all endpoints tagged `PoliciesPolicyRoot`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Get policies

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPolicyRoot.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec policies_policy_root_get_policy_root(Tesla.Env.client, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphPolicyRoot.t} | {:error, Tesla.Env.t}
  def policies_policy_root_get_policy_root(connection, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/policies")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPolicyRoot},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update policies

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_policy_root` (MicrosoftGraphPolicyRoot): New property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPolicyRoot.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec policies_policy_root_update_policy_root(Tesla.Env.client, MicrosoftGraph.Model.MicrosoftGraphPolicyRoot.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphPolicyRoot.t} | {:error, Tesla.Env.t}
  def policies_policy_root_update_policy_root(connection, microsoft_graph_policy_root, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/policies")
      |> add_param(:body, :body, microsoft_graph_policy_root)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPolicyRoot},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end