# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.SitesFunctions do
  @moduledoc """
  API calls for all endpoints tagged `SitesFunctions`.
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

  - `{:ok, MicrosoftGraph.Model.CollectionOfSite.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_delta(Tesla.Env.client(), keyword()) ::
          {:ok, MicrosoftGraph.Model.CollectionOfSite.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def sites_delta(connection, opts \\ []) do
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
      |> url("/sites/delta()")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfSite},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function getAllSites

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

  - `{:ok, MicrosoftGraph.Model.CollectionOfSite1.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_get_all_sites(Tesla.Env.client(), keyword()) ::
          {:ok, MicrosoftGraph.Model.CollectionOfSite1.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def sites_get_all_sites(connection, opts \\ []) do
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
      |> url("/sites/getAllSites()")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfSite1},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function isPublished

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `content_type_id` (String.t): The unique identifier of contentType
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.DrivesDriveListContentTypesContentTypeIsPublished2XxResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_site_content_types_content_type_is_published(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok,
           MicrosoftGraph.Model.DrivesDriveListContentTypesContentTypeIsPublished2XxResponse.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def sites_site_content_types_content_type_is_published(
        connection,
        site_id,
        content_type_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/sites/#{site_id}/contentTypes/#{content_type_id}/isPublished()")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.DrivesDriveListContentTypesContentTypeIsPublished2XxResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function getCompatibleHubContentTypes

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `opts` (keyword): Optional parameters
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$orderby"` ([String.t]): Order items by property values

  ### Returns

  - `{:ok, MicrosoftGraph.Model.CollectionOfContentType.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_site_content_types_get_compatible_hub_content_types(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.CollectionOfContentType.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def sites_site_content_types_get_compatible_hub_content_types(connection, site_id, opts \\ []) do
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
      |> url("/sites/#{site_id}/contentTypes/getCompatibleHubContentTypes()")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfContentType},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function getActivitiesByInterval

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `opts` (keyword): Optional parameters
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$orderby"` ([String.t]): Order items by property values

  ### Returns

  - `{:ok, MicrosoftGraph.Model.CollectionOfItemActivityStat.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_site_get_activities_by_interval4c35(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, MicrosoftGraph.Model.CollectionOfItemActivityStat.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def sites_site_get_activities_by_interval4c35(connection, site_id, opts \\ []) do
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
      |> url("/sites/#{site_id}/getActivitiesByInterval()")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfItemActivityStat},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function getActivitiesByInterval

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `start_date_time` (String.t): Usage: startDateTime='{startDateTime}'
  - `end_date_time` (String.t): Usage: endDateTime='{endDateTime}'
  - `interval` (String.t): Usage: interval='{interval}'
  - `opts` (keyword): Optional parameters
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$orderby"` ([String.t]): Order items by property values

  ### Returns

  - `{:ok, MicrosoftGraph.Model.CollectionOfItemActivityStat.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_site_get_activities_by_interval_ad27(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.CollectionOfItemActivityStat.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def sites_site_get_activities_by_interval_ad27(
        connection,
        site_id,
        start_date_time,
        end_date_time,
        interval,
        opts \\ []
      ) do
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
      |> url(
        "/sites/#{site_id}/getActivitiesByInterval(startDateTime&#x3D;&#39;#{start_date_time}&#39;,endDateTime&#x3D;&#39;#{end_date_time}&#39;,interval&#x3D;&#39;#{interval}&#39;)"
      )
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfItemActivityStat},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function getApplicableContentTypesForList

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `list_id` (String.t): Usage: listId='{listId}'
  - `opts` (keyword): Optional parameters
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$orderby"` ([String.t]): Order items by property values

  ### Returns

  - `{:ok, MicrosoftGraph.Model.CollectionOfContentType.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_site_get_applicable_content_types_for_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.CollectionOfContentType.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def sites_site_get_applicable_content_types_for_list(connection, site_id, list_id, opts \\ []) do
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
      |> url(
        "/sites/#{site_id}/getApplicableContentTypesForList(listId&#x3D;&#39;#{list_id}&#39;)"
      )
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfContentType},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function getByPath

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `path` (String.t): Usage: path='{path}'
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.CollectionOfSiteAllOfValueInner.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_site_get_by_path(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, MicrosoftGraph.Model.CollectionOfSiteAllOfValueInner.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def sites_site_get_by_path(connection, site_id, path, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/sites/#{site_id}/getByPath(path&#x3D;&#39;#{path}&#39;)")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfSiteAllOfValueInner},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function isPublished

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `list_id` (String.t): The unique identifier of list
  - `content_type_id` (String.t): The unique identifier of contentType
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.DrivesDriveListContentTypesContentTypeIsPublished2XxResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_site_lists_list_content_types_content_type_is_published(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok,
           MicrosoftGraph.Model.DrivesDriveListContentTypesContentTypeIsPublished2XxResponse.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def sites_site_lists_list_content_types_content_type_is_published(
        connection,
        site_id,
        list_id,
        content_type_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/sites/#{site_id}/lists/#{list_id}/contentTypes/#{content_type_id}/isPublished()")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.DrivesDriveListContentTypesContentTypeIsPublished2XxResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function getCompatibleHubContentTypes

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `list_id` (String.t): The unique identifier of list
  - `opts` (keyword): Optional parameters
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$orderby"` ([String.t]): Order items by property values

  ### Returns

  - `{:ok, MicrosoftGraph.Model.CollectionOfContentType.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_site_lists_list_content_types_get_compatible_hub_content_types(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.CollectionOfContentType.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def sites_site_lists_list_content_types_get_compatible_hub_content_types(
        connection,
        site_id,
        list_id,
        opts \\ []
      ) do
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
      |> url("/sites/#{site_id}/lists/#{list_id}/contentTypes/getCompatibleHubContentTypes()")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfContentType},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function getActivitiesByInterval

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `list_id` (String.t): The unique identifier of list
  - `list_item_id` (String.t): The unique identifier of listItem
  - `opts` (keyword): Optional parameters
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$orderby"` ([String.t]): Order items by property values

  ### Returns

  - `{:ok, MicrosoftGraph.Model.CollectionOfItemActivityStat.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_site_lists_list_items_list_item_get_activities_by_interval4c35(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.CollectionOfItemActivityStat.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def sites_site_lists_list_items_list_item_get_activities_by_interval4c35(
        connection,
        site_id,
        list_id,
        list_item_id,
        opts \\ []
      ) do
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
      |> url("/sites/#{site_id}/lists/#{list_id}/items/#{list_item_id}/getActivitiesByInterval()")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfItemActivityStat},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function getActivitiesByInterval

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `list_id` (String.t): The unique identifier of list
  - `list_item_id` (String.t): The unique identifier of listItem
  - `start_date_time` (String.t): Usage: startDateTime='{startDateTime}'
  - `end_date_time` (String.t): Usage: endDateTime='{endDateTime}'
  - `interval` (String.t): Usage: interval='{interval}'
  - `opts` (keyword): Optional parameters
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$orderby"` ([String.t]): Order items by property values

  ### Returns

  - `{:ok, MicrosoftGraph.Model.CollectionOfItemActivityStat.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_site_lists_list_items_list_item_get_activities_by_interval_ad27(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.CollectionOfItemActivityStat.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def sites_site_lists_list_items_list_item_get_activities_by_interval_ad27(
        connection,
        site_id,
        list_id,
        list_item_id,
        start_date_time,
        end_date_time,
        interval,
        opts \\ []
      ) do
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
      |> url(
        "/sites/#{site_id}/lists/#{list_id}/items/#{list_item_id}/getActivitiesByInterval(startDateTime&#x3D;&#39;#{start_date_time}&#39;,endDateTime&#x3D;&#39;#{end_date_time}&#39;,interval&#x3D;&#39;#{interval}&#39;)"
      )
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfItemActivityStat},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function getRecentNotebooks

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `include_personal_notebooks` (boolean()): Usage: includePersonalNotebooks={includePersonalNotebooks}
  - `opts` (keyword): Optional parameters
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items

  ### Returns

  - `{:ok, MicrosoftGraph.Model.UsersUserOnenoteNotebooksGetRecentNotebooks2XxResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_site_onenote_notebooks_get_recent_notebooks(
          Tesla.Env.client(),
          String.t(),
          boolean(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.UsersUserOnenoteNotebooksGetRecentNotebooks2XxResponse.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def sites_site_onenote_notebooks_get_recent_notebooks(
        connection,
        site_id,
        include_personal_notebooks,
        opts \\ []
      ) do
    optional_params = %{
      :"$top" => :query,
      :"$skip" => :query,
      :"$search" => :query,
      :"$filter" => :query,
      :"$count" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url(
        "/sites/#{site_id}/onenote/notebooks/getRecentNotebooks(includePersonalNotebooks&#x3D;#{include_personal_notebooks})"
      )
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.UsersUserOnenoteNotebooksGetRecentNotebooks2XxResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function preview

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `notebook_id` (String.t): The unique identifier of notebook
  - `section_group_id` (String.t): The unique identifier of sectionGroup
  - `onenote_section_id` (String.t): The unique identifier of onenoteSection
  - `onenote_page_id` (String.t): The unique identifier of onenotePage
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.SitesSiteOnenotePagesOnenotePagePreview2XxResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_site_onenote_notebooks_notebook_section_groups_section_group_sections_onenote_section_pages_onenote_page_preview(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.SitesSiteOnenotePagesOnenotePagePreview2XxResponse.t()}
          | {:error, Tesla.Env.t()}
  def sites_site_onenote_notebooks_notebook_section_groups_section_group_sections_onenote_section_pages_onenote_page_preview(
        connection,
        site_id,
        notebook_id,
        section_group_id,
        onenote_section_id,
        onenote_page_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url(
        "/sites/#{site_id}/onenote/notebooks/#{notebook_id}/sectionGroups/#{section_group_id}/sections/#{onenote_section_id}/pages/#{onenote_page_id}/preview()"
      )
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.SitesSiteOnenotePagesOnenotePagePreview2XxResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function preview

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `notebook_id` (String.t): The unique identifier of notebook
  - `onenote_section_id` (String.t): The unique identifier of onenoteSection
  - `onenote_page_id` (String.t): The unique identifier of onenotePage
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.SitesSiteOnenotePagesOnenotePagePreview2XxResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_site_onenote_notebooks_notebook_sections_onenote_section_pages_onenote_page_preview(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.SitesSiteOnenotePagesOnenotePagePreview2XxResponse.t()}
          | {:error, Tesla.Env.t()}
  def sites_site_onenote_notebooks_notebook_sections_onenote_section_pages_onenote_page_preview(
        connection,
        site_id,
        notebook_id,
        onenote_section_id,
        onenote_page_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url(
        "/sites/#{site_id}/onenote/notebooks/#{notebook_id}/sections/#{onenote_section_id}/pages/#{onenote_page_id}/preview()"
      )
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.SitesSiteOnenotePagesOnenotePagePreview2XxResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function preview

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `onenote_page_id` (String.t): The unique identifier of onenotePage
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.SitesSiteOnenotePagesOnenotePagePreview2XxResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_site_onenote_pages_onenote_page_preview(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.SitesSiteOnenotePagesOnenotePagePreview2XxResponse.t()}
          | {:error, Tesla.Env.t()}
  def sites_site_onenote_pages_onenote_page_preview(
        connection,
        site_id,
        onenote_page_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url("/sites/#{site_id}/onenote/pages/#{onenote_page_id}/preview()")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.SitesSiteOnenotePagesOnenotePagePreview2XxResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function preview

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `section_group_id` (String.t): The unique identifier of sectionGroup
  - `onenote_section_id` (String.t): The unique identifier of onenoteSection
  - `onenote_page_id` (String.t): The unique identifier of onenotePage
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.SitesSiteOnenotePagesOnenotePagePreview2XxResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_site_onenote_section_groups_section_group_sections_onenote_section_pages_onenote_page_preview(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.SitesSiteOnenotePagesOnenotePagePreview2XxResponse.t()}
          | {:error, Tesla.Env.t()}
  def sites_site_onenote_section_groups_section_group_sections_onenote_section_pages_onenote_page_preview(
        connection,
        site_id,
        section_group_id,
        onenote_section_id,
        onenote_page_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url(
        "/sites/#{site_id}/onenote/sectionGroups/#{section_group_id}/sections/#{onenote_section_id}/pages/#{onenote_page_id}/preview()"
      )
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.SitesSiteOnenotePagesOnenotePagePreview2XxResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function preview

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `site_id` (String.t): The unique identifier of site
  - `onenote_section_id` (String.t): The unique identifier of onenoteSection
  - `onenote_page_id` (String.t): The unique identifier of onenotePage
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.SitesSiteOnenotePagesOnenotePagePreview2XxResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec sites_site_onenote_sections_onenote_section_pages_onenote_page_preview(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.SitesSiteOnenotePagesOnenotePagePreview2XxResponse.t()}
          | {:error, Tesla.Env.t()}
  def sites_site_onenote_sections_onenote_section_pages_onenote_page_preview(
        connection,
        site_id,
        onenote_section_id,
        onenote_page_id,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:get)
      |> url(
        "/sites/#{site_id}/onenote/sections/#{onenote_section_id}/pages/#{onenote_page_id}/preview()"
      )
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.SitesSiteOnenotePagesOnenotePagePreview2XxResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end
