# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.AgreementsAgreementFileLocalization do
  @moduledoc """
  API calls for all endpoints tagged `AgreementsAgreementFileLocalization`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Create agreementFileLocalization
  Create a new localized agreement file. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `agreement_id` (String.t): The unique identifier of agreement
  - `microsoft_graph_agreement_file_localization` (MicrosoftGraphAgreementFileLocalization): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementFileLocalization.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec agreements_create_files(Tesla.Env.client, String.t, MicrosoftGraph.Model.MicrosoftGraphAgreementFileLocalization.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementFileLocalization.t} | {:error, Tesla.Env.t}
  def agreements_create_files(connection, agreement_id, microsoft_graph_agreement_file_localization, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/agreements/#{agreement_id}/files")
      |> add_param(:body, :body, microsoft_graph_agreement_file_localization)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphAgreementFileLocalization},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete navigation property files for agreements

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `agreement_id` (String.t): The unique identifier of agreement
  - `agreement_file_localization_id` (String.t): The unique identifier of agreementFileLocalization
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec agreements_delete_files(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def agreements_delete_files(connection, agreement_id, agreement_file_localization_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/agreements/#{agreement_id}/files/#{agreement_file_localization_id}")
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
  Create new navigation property to versions for agreements

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `agreement_id` (String.t): The unique identifier of agreement
  - `agreement_file_localization_id` (String.t): The unique identifier of agreementFileLocalization
  - `microsoft_graph_agreement_file_version` (MicrosoftGraphAgreementFileVersion): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementFileVersion.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec agreements_files_create_versions(Tesla.Env.client, String.t, String.t, MicrosoftGraph.Model.MicrosoftGraphAgreementFileVersion.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementFileVersion.t} | {:error, Tesla.Env.t}
  def agreements_files_create_versions(connection, agreement_id, agreement_file_localization_id, microsoft_graph_agreement_file_version, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/agreements/#{agreement_id}/files/#{agreement_file_localization_id}/versions")
      |> add_param(:body, :body, microsoft_graph_agreement_file_version)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphAgreementFileVersion},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete navigation property versions for agreements

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `agreement_id` (String.t): The unique identifier of agreement
  - `agreement_file_localization_id` (String.t): The unique identifier of agreementFileLocalization
  - `agreement_file_version_id` (String.t): The unique identifier of agreementFileVersion
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec agreements_files_delete_versions(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def agreements_files_delete_versions(connection, agreement_id, agreement_file_localization_id, agreement_file_version_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/agreements/#{agreement_id}/files/#{agreement_file_localization_id}/versions/#{agreement_file_version_id}")
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
  - `agreement_id` (String.t): The unique identifier of agreement
  - `opts` (keyword): Optional parameters
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec agreements_files_get_count_b229(Tesla.Env.client, String.t, keyword()) :: {:ok, Integer.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def agreements_files_get_count_b229(connection, agreement_id, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/agreements/#{agreement_id}/files/$count")
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
  Get versions from agreements
  Read-only. Customized versions of the terms of use agreement in the Microsoft Entra tenant.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `agreement_id` (String.t): The unique identifier of agreement
  - `agreement_file_localization_id` (String.t): The unique identifier of agreementFileLocalization
  - `agreement_file_version_id` (String.t): The unique identifier of agreementFileVersion
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementFileVersion.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec agreements_files_get_versions(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementFileVersion.t} | {:error, Tesla.Env.t}
  def agreements_files_get_versions(connection, agreement_id, agreement_file_localization_id, agreement_file_version_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/agreements/#{agreement_id}/files/#{agreement_file_localization_id}/versions/#{agreement_file_version_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphAgreementFileVersion},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get versions from agreements
  Read-only. Customized versions of the terms of use agreement in the Microsoft Entra tenant.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `agreement_id` (String.t): The unique identifier of agreement
  - `agreement_file_localization_id` (String.t): The unique identifier of agreementFileLocalization
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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementFileVersionCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec agreements_files_list_versions(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementFileVersionCollectionResponse.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def agreements_files_list_versions(connection, agreement_id, agreement_file_localization_id, opts \\ []) do
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
      |> url("/agreements/#{agreement_id}/files/#{agreement_file_localization_id}/versions")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphAgreementFileVersionCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update the navigation property versions in agreements

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `agreement_id` (String.t): The unique identifier of agreement
  - `agreement_file_localization_id` (String.t): The unique identifier of agreementFileLocalization
  - `agreement_file_version_id` (String.t): The unique identifier of agreementFileVersion
  - `microsoft_graph_agreement_file_version` (MicrosoftGraphAgreementFileVersion): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementFileVersion.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec agreements_files_update_versions(Tesla.Env.client, String.t, String.t, String.t, MicrosoftGraph.Model.MicrosoftGraphAgreementFileVersion.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementFileVersion.t} | {:error, Tesla.Env.t}
  def agreements_files_update_versions(connection, agreement_id, agreement_file_localization_id, agreement_file_version_id, microsoft_graph_agreement_file_version, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/agreements/#{agreement_id}/files/#{agreement_file_localization_id}/versions/#{agreement_file_version_id}")
      |> add_param(:body, :body, microsoft_graph_agreement_file_version)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphAgreementFileVersion},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get the number of the resource

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `agreement_id` (String.t): The unique identifier of agreement
  - `agreement_file_localization_id` (String.t): The unique identifier of agreementFileLocalization
  - `opts` (keyword): Optional parameters
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec agreements_files_versions_get_count8216(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Integer.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def agreements_files_versions_get_count8216(connection, agreement_id, agreement_file_localization_id, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/agreements/#{agreement_id}/files/#{agreement_file_localization_id}/versions/$count")
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
  Get files from agreements
  PDFs linked to this agreement. This property is in the process of being deprecated. Use the  file property instead. Supports $expand.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `agreement_id` (String.t): The unique identifier of agreement
  - `agreement_file_localization_id` (String.t): The unique identifier of agreementFileLocalization
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementFileLocalization.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec agreements_get_files(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementFileLocalization.t} | {:error, Tesla.Env.t}
  def agreements_get_files(connection, agreement_id, agreement_file_localization_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/agreements/#{agreement_id}/files/#{agreement_file_localization_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphAgreementFileLocalization},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get files from agreements
  PDFs linked to this agreement. This property is in the process of being deprecated. Use the  file property instead. Supports $expand.

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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementFileLocalizationCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec agreements_list_files(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementFileLocalizationCollectionResponse.t} | {:error, Tesla.Env.t}
  def agreements_list_files(connection, agreement_id, opts \\ []) do
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
      |> url("/agreements/#{agreement_id}/files")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphAgreementFileLocalizationCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update the navigation property files in agreements

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `agreement_id` (String.t): The unique identifier of agreement
  - `agreement_file_localization_id` (String.t): The unique identifier of agreementFileLocalization
  - `microsoft_graph_agreement_file_localization` (MicrosoftGraphAgreementFileLocalization): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementFileLocalization.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec agreements_update_files(Tesla.Env.client, String.t, String.t, MicrosoftGraph.Model.MicrosoftGraphAgreementFileLocalization.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphAgreementFileLocalization.t} | {:error, Tesla.Env.t}
  def agreements_update_files(connection, agreement_id, agreement_file_localization_id, microsoft_graph_agreement_file_localization, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/agreements/#{agreement_id}/files/#{agreement_file_localization_id}")
      |> add_param(:body, :body, microsoft_graph_agreement_file_localization)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphAgreementFileLocalization},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end