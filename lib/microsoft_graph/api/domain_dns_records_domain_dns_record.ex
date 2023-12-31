# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.DomainDnsRecordsDomainDnsRecord do
  @moduledoc """
  API calls for all endpoints tagged `DomainDnsRecordsDomainDnsRecord`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Add new entity to domainDnsRecords

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_domain_dns_record` (MicrosoftGraphDomainDnsRecord): New entity
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec domain_dns_records_domain_dns_record_create_domain_dns_record(
          Tesla.Env.client(),
          MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def domain_dns_records_domain_dns_record_create_domain_dns_record(
        connection,
        microsoft_graph_domain_dns_record,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/domainDnsRecords")
      |> add_param(:body, :body, microsoft_graph_domain_dns_record)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete entity from domainDnsRecords

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `domain_dns_record_id` (String.t): The unique identifier of domainDnsRecord
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec domain_dns_records_domain_dns_record_delete_domain_dns_record(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def domain_dns_records_domain_dns_record_delete_domain_dns_record(
        connection,
        domain_dns_record_id,
        opts \\ []
      ) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/domainDnsRecords/#{domain_dns_record_id}")
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
  Get entity from domainDnsRecords by key

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `domain_dns_record_id` (String.t): The unique identifier of domainDnsRecord
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec domain_dns_records_domain_dns_record_get_domain_dns_record(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def domain_dns_records_domain_dns_record_get_domain_dns_record(
        connection,
        domain_dns_record_id,
        opts \\ []
      ) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/domainDnsRecords/#{domain_dns_record_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get entities from domainDnsRecords

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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecordCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec domain_dns_records_domain_dns_record_list_domain_dns_record(Tesla.Env.client(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecordCollectionResponse.t()}
          | {:error, Tesla.Env.t()}
  def domain_dns_records_domain_dns_record_list_domain_dns_record(connection, opts \\ []) do
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
      |> url("/domainDnsRecords")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecordCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update entity in domainDnsRecords

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `domain_dns_record_id` (String.t): The unique identifier of domainDnsRecord
  - `microsoft_graph_domain_dns_record` (MicrosoftGraphDomainDnsRecord): New property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec domain_dns_records_domain_dns_record_update_domain_dns_record(
          Tesla.Env.client(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def domain_dns_records_domain_dns_record_update_domain_dns_record(
        connection,
        domain_dns_record_id,
        microsoft_graph_domain_dns_record,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/domainDnsRecords/#{domain_dns_record_id}")
      |> add_param(:body, :body, microsoft_graph_domain_dns_record)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord},
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
  @spec domain_dns_records_get_count96e3(Tesla.Env.client(), keyword()) ::
          {:ok, Integer.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def domain_dns_records_get_count96e3(connection, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/domainDnsRecords/$count")
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
