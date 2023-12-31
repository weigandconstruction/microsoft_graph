# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.DirectoryRoleTemplatesDirectoryRoleTemplate do
  @moduledoc """
  API calls for all endpoints tagged `DirectoryRoleTemplatesDirectoryRoleTemplate`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Add new entity to directoryRoleTemplates

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_directory_role_template` (MicrosoftGraphDirectoryRoleTemplate): New entity
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDirectoryRoleTemplate.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec directory_role_templates_directory_role_template_create_directory_role_template(
          Tesla.Env.client(),
          MicrosoftGraph.Model.MicrosoftGraphDirectoryRoleTemplate.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphDirectoryRoleTemplate.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def directory_role_templates_directory_role_template_create_directory_role_template(
        connection,
        microsoft_graph_directory_role_template,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/directoryRoleTemplates")
      |> add_param(:body, :body, microsoft_graph_directory_role_template)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDirectoryRoleTemplate},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete entity from directoryRoleTemplates

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `directory_role_template_id` (String.t): The unique identifier of directoryRoleTemplate
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec directory_role_templates_directory_role_template_delete_directory_role_template(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def directory_role_templates_directory_role_template_delete_directory_role_template(
        connection,
        directory_role_template_id,
        opts \\ []
      ) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/directoryRoleTemplates/#{directory_role_template_id}")
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
  Get directoryRoleTemplate
  Retrieve the properties and relationships of a directoryroletemplate object. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `directory_role_template_id` (String.t): The unique identifier of directoryRoleTemplate
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDirectoryRoleTemplate.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec directory_role_templates_directory_role_template_get_directory_role_template(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphDirectoryRoleTemplate.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def directory_role_templates_directory_role_template_get_directory_role_template(
        connection,
        directory_role_template_id,
        opts \\ []
      ) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/directoryRoleTemplates/#{directory_role_template_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDirectoryRoleTemplate},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  List directoryRoleTemplates
  Retrieve a list of directoryRoleTemplate objects. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$orderby"` ([String.t]): Order items by property values
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDirectoryRoleTemplateCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec directory_role_templates_directory_role_template_list_directory_role_template(
          Tesla.Env.client(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphDirectoryRoleTemplateCollectionResponse.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def directory_role_templates_directory_role_template_list_directory_role_template(
        connection,
        opts \\ []
      ) do
    optional_params = %{
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
      |> url("/directoryRoleTemplates")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDirectoryRoleTemplateCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update entity in directoryRoleTemplates

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `directory_role_template_id` (String.t): The unique identifier of directoryRoleTemplate
  - `microsoft_graph_directory_role_template` (MicrosoftGraphDirectoryRoleTemplate): New property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDirectoryRoleTemplate.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec directory_role_templates_directory_role_template_update_directory_role_template(
          Tesla.Env.client(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphDirectoryRoleTemplate.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphDirectoryRoleTemplate.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def directory_role_templates_directory_role_template_update_directory_role_template(
        connection,
        directory_role_template_id,
        microsoft_graph_directory_role_template,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/directoryRoleTemplates/#{directory_role_template_id}")
      |> add_param(:body, :body, microsoft_graph_directory_role_template)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDirectoryRoleTemplate},
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
  @spec directory_role_templates_get_count_ed85(Tesla.Env.client(), keyword()) ::
          {:ok, Integer.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def directory_role_templates_get_count_ed85(connection, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/directoryRoleTemplates/$count")
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
