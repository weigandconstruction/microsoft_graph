# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.AgreementsAgreementAcceptance do
  @moduledoc """
  API calls for all endpoints tagged `AgreementsAgreementAcceptance`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Get the number of the resource

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `agreement_id` (String.t): The unique identifier of agreement
  - `opts` (keyword): Optional parameters
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec agreements_acceptances_get_count9ff2(Tesla.Env.client, String.t, keyword()) :: {:ok, Integer.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def agreements_acceptances_get_count9ff2(connection, agreement_id, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/agreements/#{agreement_id}/acceptances/$count")
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

  @doc """
  Create new navigation property to acceptances for agreements

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `agreement_id` (String.t): The unique identifier of agreement
  - `microsoft_graph_agreement_acceptance` (MicrosoftGraphAgreementAcceptance): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementAcceptance.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec agreements_create_acceptances(Tesla.Env.client, String.t, MicrosoftGraph.Model.MicrosoftGraphAgreementAcceptance.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementAcceptance.t} | {:error, Tesla.Env.t}
  def agreements_create_acceptances(connection, agreement_id, microsoft_graph_agreement_acceptance, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/agreements/#{agreement_id}/acceptances")
      |> add_param(:body, :body, microsoft_graph_agreement_acceptance)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphAgreementAcceptance},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete navigation property acceptances for agreements

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `agreement_id` (String.t): The unique identifier of agreement
  - `agreement_acceptance_id` (String.t): The unique identifier of agreementAcceptance
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec agreements_delete_acceptances(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def agreements_delete_acceptances(connection, agreement_id, agreement_acceptance_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/agreements/#{agreement_id}/acceptances/#{agreement_acceptance_id}")
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
  Get acceptances from agreements
  Read-only. Information about acceptances of this agreement.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `agreement_id` (String.t): The unique identifier of agreement
  - `agreement_acceptance_id` (String.t): The unique identifier of agreementAcceptance
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementAcceptance.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec agreements_get_acceptances(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementAcceptance.t} | {:error, Tesla.Env.t}
  def agreements_get_acceptances(connection, agreement_id, agreement_acceptance_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/agreements/#{agreement_id}/acceptances/#{agreement_acceptance_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphAgreementAcceptance},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  List acceptances
  Get the details about the acceptance records for a specific agreement. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `agreement_id` (String.t): The unique identifier of agreement
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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementAcceptanceCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec agreements_list_acceptances(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementAcceptanceCollectionResponse.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def agreements_list_acceptances(connection, agreement_id, opts \\ []) do
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
      |> url("/agreements/#{agreement_id}/acceptances")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphAgreementAcceptanceCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update the navigation property acceptances in agreements

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `agreement_id` (String.t): The unique identifier of agreement
  - `agreement_acceptance_id` (String.t): The unique identifier of agreementAcceptance
  - `microsoft_graph_agreement_acceptance` (MicrosoftGraphAgreementAcceptance): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementAcceptance.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec agreements_update_acceptances(Tesla.Env.client, String.t, String.t, MicrosoftGraph.Model.MicrosoftGraphAgreementAcceptance.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementAcceptance.t} | {:error, Tesla.Env.t}
  def agreements_update_acceptances(connection, agreement_id, agreement_acceptance_id, microsoft_graph_agreement_acceptance, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/agreements/#{agreement_id}/acceptances/#{agreement_acceptance_id}")
      |> add_param(:body, :body, microsoft_graph_agreement_acceptance)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphAgreementAcceptance},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end