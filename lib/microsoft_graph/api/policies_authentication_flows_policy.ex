# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.PoliciesAuthenticationFlowsPolicy do
  @moduledoc """
  API calls for all endpoints tagged `PoliciesAuthenticationFlowsPolicy`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Delete navigation property authenticationFlowsPolicy for policies

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec policies_delete_authentication_flows_policy(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def policies_delete_authentication_flows_policy(connection, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/policies/authenticationFlowsPolicy")
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
  Get authenticationFlowsPolicy
  Read the properties and relationships of an authenticationFlowsPolicy object. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphAuthenticationFlowsPolicy.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec policies_get_authentication_flows_policy(Tesla.Env.client, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphAuthenticationFlowsPolicy.t} | {:error, Tesla.Env.t}
  def policies_get_authentication_flows_policy(connection, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/policies/authenticationFlowsPolicy")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphAuthenticationFlowsPolicy},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update authenticationFlowsPolicy
  Update the selfServiceSignUp property of an authenticationFlowsPolicy object. The properties id, type, and description cannot be modified. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_authentication_flows_policy` (MicrosoftGraphAuthenticationFlowsPolicy): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphAuthenticationFlowsPolicy.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec policies_update_authentication_flows_policy(Tesla.Env.client, MicrosoftGraph.Model.MicrosoftGraphAuthenticationFlowsPolicy.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphAuthenticationFlowsPolicy.t} | {:error, Tesla.Env.t}
  def policies_update_authentication_flows_policy(connection, microsoft_graph_authentication_flows_policy, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/policies/authenticationFlowsPolicy")
      |> add_param(:body, :body, microsoft_graph_authentication_flows_policy)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphAuthenticationFlowsPolicy},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end