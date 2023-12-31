# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.DomainsDomainDnsRecord do
  @moduledoc """
  API calls for all endpoints tagged `DomainsDomainDnsRecord`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Create new navigation property to serviceConfigurationRecords for domains

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `domain_id` (String.t): The unique identifier of domain
  - `microsoft_graph_domain_dns_record` (MicrosoftGraphDomainDnsRecord): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec domains_create_service_configuration_records(
          Tesla.Env.client(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def domains_create_service_configuration_records(
        connection,
        domain_id,
        microsoft_graph_domain_dns_record,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/domains/#{domain_id}/serviceConfigurationRecords")
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
  Create new navigation property to verificationDnsRecords for domains

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `domain_id` (String.t): The unique identifier of domain
  - `microsoft_graph_domain_dns_record` (MicrosoftGraphDomainDnsRecord): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec domains_create_verification_dns_records(
          Tesla.Env.client(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def domains_create_verification_dns_records(
        connection,
        domain_id,
        microsoft_graph_domain_dns_record,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/domains/#{domain_id}/verificationDnsRecords")
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
  Delete navigation property serviceConfigurationRecords for domains

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `domain_id` (String.t): The unique identifier of domain
  - `domain_dns_record_id` (String.t): The unique identifier of domainDnsRecord
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec domains_delete_service_configuration_records(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def domains_delete_service_configuration_records(
        connection,
        domain_id,
        domain_dns_record_id,
        opts \\ []
      ) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/domains/#{domain_id}/serviceConfigurationRecords/#{domain_dns_record_id}")
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
  Delete navigation property verificationDnsRecords for domains

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `domain_id` (String.t): The unique identifier of domain
  - `domain_dns_record_id` (String.t): The unique identifier of domainDnsRecord
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec domains_delete_verification_dns_records(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def domains_delete_verification_dns_records(
        connection,
        domain_id,
        domain_dns_record_id,
        opts \\ []
      ) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/domains/#{domain_id}/verificationDnsRecords/#{domain_dns_record_id}")
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
  Get serviceConfigurationRecords from domains
  DNS records the customer adds to the DNS zone file of the domain before the domain can be used by Microsoft Online services. Read-only, Nullable. Supports $expand.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `domain_id` (String.t): The unique identifier of domain
  - `domain_dns_record_id` (String.t): The unique identifier of domainDnsRecord
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec domains_get_service_configuration_records(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def domains_get_service_configuration_records(
        connection,
        domain_id,
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
      |> url("/domains/#{domain_id}/serviceConfigurationRecords/#{domain_dns_record_id}")
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
  Get verificationDnsRecords from domains
  DNS records that the customer adds to the DNS zone file of the domain before the customer can complete domain ownership verification with Microsoft Entra ID. Read-only, Nullable. Supports $expand.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `domain_id` (String.t): The unique identifier of domain
  - `domain_dns_record_id` (String.t): The unique identifier of domainDnsRecord
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec domains_get_verification_dns_records(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def domains_get_verification_dns_records(
        connection,
        domain_id,
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
      |> url("/domains/#{domain_id}/verificationDnsRecords/#{domain_dns_record_id}")
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
  List serviceConfigurationRecords
  Retrieves a list of domainDnsRecord objects needed to enable services for the domain. Use the returned list to add records to the zone file of the domain. This can be done through the domain registrar or DNS server configuration. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `domain_id` (String.t): The unique identifier of domain
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
  @spec domains_list_service_configuration_records(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecordCollectionResponse.t()}
          | {:error, Tesla.Env.t()}
  def domains_list_service_configuration_records(connection, domain_id, opts \\ []) do
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
      |> url("/domains/#{domain_id}/serviceConfigurationRecords")
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
  List verificationDnsRecords
  Retrieve a list of domainDnsRecord objects. You cannot use an associated domain with your Microsoft Entra tenant until ownership is verified. To verify the ownership of the domain, retrieve the domain verification records and add the details to the zone file of the domain. This can be done through the domain registrar or DNS server configuration. Root domains require verification. For example, contoso.com requires verification. If a root domain is verified, subdomains of the root domain are automatically verified. For example, subdomain.contoso.com is automatically be verified if contoso.com has been verified. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `domain_id` (String.t): The unique identifier of domain
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
  @spec domains_list_verification_dns_records(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecordCollectionResponse.t()}
          | {:error, Tesla.Env.t()}
  def domains_list_verification_dns_records(connection, domain_id, opts \\ []) do
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
      |> url("/domains/#{domain_id}/verificationDnsRecords")
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
  Get the number of the resource

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `domain_id` (String.t): The unique identifier of domain
  - `opts` (keyword): Optional parameters
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec domains_service_configuration_records_get_count999b(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, Integer.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def domains_service_configuration_records_get_count999b(connection, domain_id, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/domains/#{domain_id}/serviceConfigurationRecords/$count")
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
  Update the navigation property serviceConfigurationRecords in domains

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `domain_id` (String.t): The unique identifier of domain
  - `domain_dns_record_id` (String.t): The unique identifier of domainDnsRecord
  - `microsoft_graph_domain_dns_record` (MicrosoftGraphDomainDnsRecord): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec domains_update_service_configuration_records(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def domains_update_service_configuration_records(
        connection,
        domain_id,
        domain_dns_record_id,
        microsoft_graph_domain_dns_record,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/domains/#{domain_id}/serviceConfigurationRecords/#{domain_dns_record_id}")
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
  Update the navigation property verificationDnsRecords in domains

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `domain_id` (String.t): The unique identifier of domain
  - `domain_dns_record_id` (String.t): The unique identifier of domainDnsRecord
  - `microsoft_graph_domain_dns_record` (MicrosoftGraphDomainDnsRecord): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec domains_update_verification_dns_records(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphDomainDnsRecord.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def domains_update_verification_dns_records(
        connection,
        domain_id,
        domain_dns_record_id,
        microsoft_graph_domain_dns_record,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/domains/#{domain_id}/verificationDnsRecords/#{domain_dns_record_id}")
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
  - `domain_id` (String.t): The unique identifier of domain
  - `opts` (keyword): Optional parameters
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec domains_verification_dns_records_get_count_d5a7(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, Integer.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def domains_verification_dns_records_get_count_d5a7(connection, domain_id, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/domains/#{domain_id}/verificationDnsRecords/$count")
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
