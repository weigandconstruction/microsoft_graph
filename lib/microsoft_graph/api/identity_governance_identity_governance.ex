# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.IdentityGovernanceIdentityGovernance do
  @moduledoc """
  API calls for all endpoints tagged `IdentityGovernanceIdentityGovernance`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Get identityGovernance

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphIdentityGovernance.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec identity_governance_identity_governance_get_identity_governance(
          Tesla.Env.client(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphIdentityGovernance.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def identity_governance_identity_governance_get_identity_governance(connection, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/identityGovernance")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphIdentityGovernance},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update identityGovernance

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_identity_governance` (MicrosoftGraphIdentityGovernance): New property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphIdentityGovernance.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec identity_governance_identity_governance_update_identity_governance(
          Tesla.Env.client(),
          MicrosoftGraph.Model.MicrosoftGraphIdentityGovernance.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphIdentityGovernance.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def identity_governance_identity_governance_update_identity_governance(
        connection,
        microsoft_graph_identity_governance,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/identityGovernance")
      |> add_param(:body, :body, microsoft_graph_identity_governance)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphIdentityGovernance},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end
