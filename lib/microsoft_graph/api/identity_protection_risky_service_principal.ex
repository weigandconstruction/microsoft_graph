# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.IdentityProtectionRiskyServicePrincipal do
  @moduledoc """
  API calls for all endpoints tagged `IdentityProtectionRiskyServicePrincipal`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Create new navigation property to riskyServicePrincipals for identityProtection

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_risky_service_principal` (MicrosoftGraphRiskyServicePrincipal): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipal.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec identity_protection_create_risky_service_principals(Tesla.Env.client, MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipal.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipal.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def identity_protection_create_risky_service_principals(connection, microsoft_graph_risky_service_principal, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/identityProtection/riskyServicePrincipals")
      |> add_param(:body, :body, microsoft_graph_risky_service_principal)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipal},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete navigation property riskyServicePrincipals for identityProtection

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `risky_service_principal_id` (String.t): The unique identifier of riskyServicePrincipal
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec identity_protection_delete_risky_service_principals(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def identity_protection_delete_risky_service_principals(connection, risky_service_principal_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/identityProtection/riskyServicePrincipals/#{risky_service_principal_id}")
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
  Get riskyServicePrincipal
  Read the properties and relationships of a riskyServicePrincipal object. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `risky_service_principal_id` (String.t): The unique identifier of riskyServicePrincipal
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipal.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec identity_protection_get_risky_service_principals(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipal.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def identity_protection_get_risky_service_principals(connection, risky_service_principal_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/identityProtection/riskyServicePrincipals/#{risky_service_principal_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipal},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  List riskyServicePrincipals
  Retrieve the properties and relationships of riskyServicePrincipal objects. This API is available in the following national cloud deployments.

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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipalCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec identity_protection_list_risky_service_principals(Tesla.Env.client, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipalCollectionResponse.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def identity_protection_list_risky_service_principals(connection, opts \\ []) do
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
      |> url("/identityProtection/riskyServicePrincipals")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipalCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Create new navigation property to history for identityProtection

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `risky_service_principal_id` (String.t): The unique identifier of riskyServicePrincipal
  - `microsoft_graph_risky_service_principal_history_item` (MicrosoftGraphRiskyServicePrincipalHistoryItem): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipalHistoryItem.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec identity_protection_risky_service_principals_create_history(Tesla.Env.client, String.t, MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipalHistoryItem.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipalHistoryItem.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def identity_protection_risky_service_principals_create_history(connection, risky_service_principal_id, microsoft_graph_risky_service_principal_history_item, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/identityProtection/riskyServicePrincipals/#{risky_service_principal_id}/history")
      |> add_param(:body, :body, microsoft_graph_risky_service_principal_history_item)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipalHistoryItem},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete navigation property history for identityProtection

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `risky_service_principal_id` (String.t): The unique identifier of riskyServicePrincipal
  - `risky_service_principal_history_item_id` (String.t): The unique identifier of riskyServicePrincipalHistoryItem
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec identity_protection_risky_service_principals_delete_history(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def identity_protection_risky_service_principals_delete_history(connection, risky_service_principal_id, risky_service_principal_history_item_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/identityProtection/riskyServicePrincipals/#{risky_service_principal_id}/history/#{risky_service_principal_history_item_id}")
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
  @spec identity_protection_risky_service_principals_get_count_d335(Tesla.Env.client, keyword()) :: {:ok, Integer.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def identity_protection_risky_service_principals_get_count_d335(connection, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/identityProtection/riskyServicePrincipals/$count")
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
  Get history from identityProtection
  Represents the risk history of Microsoft Entra service principals.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `risky_service_principal_id` (String.t): The unique identifier of riskyServicePrincipal
  - `risky_service_principal_history_item_id` (String.t): The unique identifier of riskyServicePrincipalHistoryItem
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipalHistoryItem.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec identity_protection_risky_service_principals_get_history(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipalHistoryItem.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def identity_protection_risky_service_principals_get_history(connection, risky_service_principal_id, risky_service_principal_history_item_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/identityProtection/riskyServicePrincipals/#{risky_service_principal_id}/history/#{risky_service_principal_history_item_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipalHistoryItem},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get the number of the resource

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `risky_service_principal_id` (String.t): The unique identifier of riskyServicePrincipal
  - `opts` (keyword): Optional parameters
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec identity_protection_risky_service_principals_history_get_count818f(Tesla.Env.client, String.t, keyword()) :: {:ok, Integer.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def identity_protection_risky_service_principals_history_get_count818f(connection, risky_service_principal_id, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/identityProtection/riskyServicePrincipals/#{risky_service_principal_id}/history/$count")
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
  List history (risk history of riskyServicePrincipal)
  Get the risk history of a riskyServicePrincipal object. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `risky_service_principal_id` (String.t): The unique identifier of riskyServicePrincipal
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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipalHistoryItemCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec identity_protection_risky_service_principals_list_history(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipalHistoryItemCollectionResponse.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def identity_protection_risky_service_principals_list_history(connection, risky_service_principal_id, opts \\ []) do
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
      |> url("/identityProtection/riskyServicePrincipals/#{risky_service_principal_id}/history")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipalHistoryItemCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update the navigation property history in identityProtection

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `risky_service_principal_id` (String.t): The unique identifier of riskyServicePrincipal
  - `risky_service_principal_history_item_id` (String.t): The unique identifier of riskyServicePrincipalHistoryItem
  - `microsoft_graph_risky_service_principal_history_item` (MicrosoftGraphRiskyServicePrincipalHistoryItem): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipalHistoryItem.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec identity_protection_risky_service_principals_update_history(Tesla.Env.client, String.t, String.t, MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipalHistoryItem.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipalHistoryItem.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def identity_protection_risky_service_principals_update_history(connection, risky_service_principal_id, risky_service_principal_history_item_id, microsoft_graph_risky_service_principal_history_item, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/identityProtection/riskyServicePrincipals/#{risky_service_principal_id}/history/#{risky_service_principal_history_item_id}")
      |> add_param(:body, :body, microsoft_graph_risky_service_principal_history_item)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipalHistoryItem},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update the navigation property riskyServicePrincipals in identityProtection

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `risky_service_principal_id` (String.t): The unique identifier of riskyServicePrincipal
  - `microsoft_graph_risky_service_principal` (MicrosoftGraphRiskyServicePrincipal): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipal.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec identity_protection_update_risky_service_principals(Tesla.Env.client, String.t, MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipal.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipal.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def identity_protection_update_risky_service_principals(connection, risky_service_principal_id, microsoft_graph_risky_service_principal, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/identityProtection/riskyServicePrincipals/#{risky_service_principal_id}")
      |> add_param(:body, :body, microsoft_graph_risky_service_principal)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphRiskyServicePrincipal},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end