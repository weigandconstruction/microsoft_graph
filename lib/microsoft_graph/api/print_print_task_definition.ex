# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.PrintPrintTaskDefinition do
  @moduledoc """
  API calls for all endpoints tagged `PrintPrintTaskDefinition`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Create printTaskDefinition
  Create a new task definition. For details about how to use this API to add pull printing support to Universal Print, see Extending Universal Print to support pull printing. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_print_task_definition` (MicrosoftGraphPrintTaskDefinition): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPrintTaskDefinition.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_create_task_definitions(Tesla.Env.client, MicrosoftGraph.Model.MicrosoftGraphPrintTaskDefinition.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphPrintTaskDefinition.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def print_create_task_definitions(connection, microsoft_graph_print_task_definition, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/print/taskDefinitions")
      |> add_param(:body, :body, microsoft_graph_print_task_definition)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPrintTaskDefinition},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete printTaskDefinition
  Delete a taskDefinition. For details about how to use this API to add pull printing support to Universal Print, see Extending Universal Print to support pull printing. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `print_task_definition_id` (String.t): The unique identifier of printTaskDefinition
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_delete_task_definitions(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def print_delete_task_definitions(connection, print_task_definition_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/print/taskDefinitions/#{print_task_definition_id}")
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
  Get printTaskDefinition
  Get details about a task definition. For details about how to use this API to add pull printing support to Universal Print, see Extending Universal Print to support pull printing. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `print_task_definition_id` (String.t): The unique identifier of printTaskDefinition
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPrintTaskDefinition.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_get_task_definitions(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphPrintTaskDefinition.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def print_get_task_definitions(connection, print_task_definition_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/print/taskDefinitions/#{print_task_definition_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPrintTaskDefinition},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  List taskDefinitions
  Retrieve a list of task definitions that the requesting app defined in the tenant. For details about how to use this API to add pull printing support to Universal Print, see Extending Universal Print to support pull printing. This API is available in the following national cloud deployments.

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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPrintTaskDefinitionCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_list_task_definitions(Tesla.Env.client, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphPrintTaskDefinitionCollectionResponse.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def print_list_task_definitions(connection, opts \\ []) do
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
      |> url("/print/taskDefinitions")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPrintTaskDefinitionCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Create new navigation property to tasks for print

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `print_task_definition_id` (String.t): The unique identifier of printTaskDefinition
  - `microsoft_graph_print_task` (MicrosoftGraphPrintTask): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPrintTask.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_task_definitions_create_tasks(Tesla.Env.client, String.t, MicrosoftGraph.Model.MicrosoftGraphPrintTask.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphPrintTask.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def print_task_definitions_create_tasks(connection, print_task_definition_id, microsoft_graph_print_task, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/print/taskDefinitions/#{print_task_definition_id}/tasks")
      |> add_param(:body, :body, microsoft_graph_print_task)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPrintTask},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete navigation property tasks for print

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `print_task_definition_id` (String.t): The unique identifier of printTaskDefinition
  - `print_task_id` (String.t): The unique identifier of printTask
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_task_definitions_delete_tasks(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def print_task_definitions_delete_tasks(connection, print_task_definition_id, print_task_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/print/taskDefinitions/#{print_task_definition_id}/tasks/#{print_task_id}")
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
  @spec print_task_definitions_get_count_ee04(Tesla.Env.client, keyword()) :: {:ok, Integer.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def print_task_definitions_get_count_ee04(connection, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/print/taskDefinitions/$count")
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
  Get printTask
  Get details about a print task. For details about how to use this API to add pull printing support to Universal Print, see Extending Universal Print to support pull printing. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `print_task_definition_id` (String.t): The unique identifier of printTaskDefinition
  - `print_task_id` (String.t): The unique identifier of printTask
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPrintTask.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_task_definitions_get_tasks(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphPrintTask.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def print_task_definitions_get_tasks(connection, print_task_definition_id, print_task_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/print/taskDefinitions/#{print_task_definition_id}/tasks/#{print_task_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPrintTask},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  List tasks
  Retrieve a list of tasks associated with a task definition. For details about how to use this API to add pull printing support to Universal Print, see Extending Universal Print to support pull printing. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `print_task_definition_id` (String.t): The unique identifier of printTaskDefinition
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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPrintTaskCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_task_definitions_list_tasks(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphPrintTaskCollectionResponse.t} | {:error, Tesla.Env.t}
  def print_task_definitions_list_tasks(connection, print_task_definition_id, opts \\ []) do
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
      |> url("/print/taskDefinitions/#{print_task_definition_id}/tasks")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPrintTaskCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get the number of the resource

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `print_task_definition_id` (String.t): The unique identifier of printTaskDefinition
  - `opts` (keyword): Optional parameters
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_task_definitions_tasks_get_count0c4f(Tesla.Env.client, String.t, keyword()) :: {:ok, Integer.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def print_task_definitions_tasks_get_count0c4f(connection, print_task_definition_id, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/print/taskDefinitions/#{print_task_definition_id}/tasks/$count")
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
  Get definition from print
  The printTaskDefinition that was used to create this task. Read-only.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `print_task_definition_id` (String.t): The unique identifier of printTaskDefinition
  - `print_task_id` (String.t): The unique identifier of printTask
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPrintTaskDefinition.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_task_definitions_tasks_get_definition(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphPrintTaskDefinition.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def print_task_definitions_tasks_get_definition(connection, print_task_definition_id, print_task_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/print/taskDefinitions/#{print_task_definition_id}/tasks/#{print_task_id}/definition")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPrintTaskDefinition},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get trigger from print
  The printTaskTrigger that triggered this task's execution. Read-only.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `print_task_definition_id` (String.t): The unique identifier of printTaskDefinition
  - `print_task_id` (String.t): The unique identifier of printTask
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPrintTaskTrigger.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_task_definitions_tasks_get_trigger(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphPrintTaskTrigger.t} | {:error, Tesla.Env.t}
  def print_task_definitions_tasks_get_trigger(connection, print_task_definition_id, print_task_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/print/taskDefinitions/#{print_task_definition_id}/tasks/#{print_task_id}/trigger")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPrintTaskTrigger},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update printTask
  Update a print task. For details about how to use this API to add pull printing support to Universal Print, see Extending Universal Print to support pull printing. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `print_task_definition_id` (String.t): The unique identifier of printTaskDefinition
  - `print_task_id` (String.t): The unique identifier of printTask
  - `microsoft_graph_print_task` (MicrosoftGraphPrintTask): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPrintTask.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_task_definitions_update_tasks(Tesla.Env.client, String.t, String.t, MicrosoftGraph.Model.MicrosoftGraphPrintTask.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphPrintTask.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def print_task_definitions_update_tasks(connection, print_task_definition_id, print_task_id, microsoft_graph_print_task, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/print/taskDefinitions/#{print_task_definition_id}/tasks/#{print_task_id}")
      |> add_param(:body, :body, microsoft_graph_print_task)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPrintTask},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update printTaskDefinition
  Update a task definition. For details about how to use this API to add pull printing support to Universal Print, see Extending Universal Print to support pull printing. This API is available in the following national cloud deployments.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `print_task_definition_id` (String.t): The unique identifier of printTaskDefinition
  - `microsoft_graph_print_task_definition` (MicrosoftGraphPrintTaskDefinition): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphPrintTaskDefinition.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec print_update_task_definitions(Tesla.Env.client, String.t, MicrosoftGraph.Model.MicrosoftGraphPrintTaskDefinition.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphPrintTaskDefinition.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def print_update_task_definitions(connection, print_task_definition_id, microsoft_graph_print_task_definition, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/print/taskDefinitions/#{print_task_definition_id}")
      |> add_param(:body, :body, microsoft_graph_print_task_definition)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphPrintTaskDefinition},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end