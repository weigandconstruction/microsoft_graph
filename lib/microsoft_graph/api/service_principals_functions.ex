# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.ServicePrincipalsFunctions do
  @moduledoc """
  API calls for all endpoints tagged `ServicePrincipalsFunctions`.
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

  - `{:ok, MicrosoftGraph.Model.CollectionOfServicePrincipal.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec service_principals_delta(Tesla.Env.client, keyword()) :: {:ok, MicrosoftGraph.Model.CollectionOfServicePrincipal.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def service_principals_delta(connection, opts \\ []) do
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
      |> url("/servicePrincipals/delta()")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfServicePrincipal},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function filterOperators

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `service_principal_id` (String.t): The unique identifier of servicePrincipal
  - `synchronization_job_id` (String.t): The unique identifier of synchronizationJob
  - `opts` (keyword): Optional parameters
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$orderby"` ([String.t]): Order items by property values

  ### Returns

  - `{:ok, MicrosoftGraph.Model.CollectionOfFilterOperatorSchema.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec service_principals_service_principal_synchronization_jobs_synchronization_job_schema_filter_operators(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.CollectionOfFilterOperatorSchema.t} | {:error, Tesla.Env.t}
  def service_principals_service_principal_synchronization_jobs_synchronization_job_schema_filter_operators(connection, service_principal_id, synchronization_job_id, opts \\ []) do
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
      |> url("/servicePrincipals/#{service_principal_id}/synchronization/jobs/#{synchronization_job_id}/schema/filterOperators()")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfFilterOperatorSchema},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function functions

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `service_principal_id` (String.t): The unique identifier of servicePrincipal
  - `synchronization_job_id` (String.t): The unique identifier of synchronizationJob
  - `opts` (keyword): Optional parameters
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$orderby"` ([String.t]): Order items by property values

  ### Returns

  - `{:ok, MicrosoftGraph.Model.CollectionOfAttributeMappingFunctionSchema.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec service_principals_service_principal_synchronization_jobs_synchronization_job_schema_functions(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.CollectionOfAttributeMappingFunctionSchema.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def service_principals_service_principal_synchronization_jobs_synchronization_job_schema_functions(connection, service_principal_id, synchronization_job_id, opts \\ []) do
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
      |> url("/servicePrincipals/#{service_principal_id}/synchronization/jobs/#{synchronization_job_id}/schema/functions()")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfAttributeMappingFunctionSchema},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function filterOperators

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `service_principal_id` (String.t): The unique identifier of servicePrincipal
  - `synchronization_template_id` (String.t): The unique identifier of synchronizationTemplate
  - `opts` (keyword): Optional parameters
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$orderby"` ([String.t]): Order items by property values

  ### Returns

  - `{:ok, MicrosoftGraph.Model.CollectionOfFilterOperatorSchema.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec service_principals_service_principal_synchronization_templates_synchronization_template_schema_filter_operators(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.CollectionOfFilterOperatorSchema.t} | {:error, Tesla.Env.t}
  def service_principals_service_principal_synchronization_templates_synchronization_template_schema_filter_operators(connection, service_principal_id, synchronization_template_id, opts \\ []) do
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
      |> url("/servicePrincipals/#{service_principal_id}/synchronization/templates/#{synchronization_template_id}/schema/filterOperators()")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfFilterOperatorSchema},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function functions

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `service_principal_id` (String.t): The unique identifier of servicePrincipal
  - `synchronization_template_id` (String.t): The unique identifier of synchronizationTemplate
  - `opts` (keyword): Optional parameters
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$orderby"` ([String.t]): Order items by property values

  ### Returns

  - `{:ok, MicrosoftGraph.Model.CollectionOfAttributeMappingFunctionSchema.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec service_principals_service_principal_synchronization_templates_synchronization_template_schema_functions(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.CollectionOfAttributeMappingFunctionSchema.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def service_principals_service_principal_synchronization_templates_synchronization_template_schema_functions(connection, service_principal_id, synchronization_template_id, opts \\ []) do
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
      |> url("/servicePrincipals/#{service_principal_id}/synchronization/templates/#{synchronization_template_id}/schema/functions()")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfAttributeMappingFunctionSchema},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end