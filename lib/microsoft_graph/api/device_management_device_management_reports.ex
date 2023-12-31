# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.DeviceManagementDeviceManagementReports do
  @moduledoc """
  API calls for all endpoints tagged `DeviceManagementDeviceManagementReports`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Delete navigation property reports for deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_delete_reports(Tesla.Env.client(), keyword()) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_delete_reports(connection, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/deviceManagement/reports")
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
  Get deviceManagementReports
  Read properties and relationships of the deviceManagementReports object.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementReports.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_get_reports(Tesla.Env.client(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementReports.t()}
          | {:error, Tesla.Env.t()}
  def device_management_get_reports(connection, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/reports")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDeviceManagementReports},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Create deviceManagementExportJob
  Create a new deviceManagementExportJob object.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_device_management_export_job` (MicrosoftGraphDeviceManagementExportJob): New navigation property
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExportJob.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_reports_create_export_jobs(
          Tesla.Env.client(),
          MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExportJob.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExportJob.t()}
          | {:error, Tesla.Env.t()}
  def device_management_reports_create_export_jobs(
        connection,
        microsoft_graph_device_management_export_job,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:post)
      |> url("/deviceManagement/reports/exportJobs")
      |> add_param(:body, :body, microsoft_graph_device_management_export_job)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExportJob},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete deviceManagementExportJob
  Deletes a deviceManagementExportJob.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `device_management_export_job_id` (String.t): The unique identifier of deviceManagementExportJob
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_reports_delete_export_jobs(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_reports_delete_export_jobs(
        connection,
        device_management_export_job_id,
        opts \\ []
      ) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/deviceManagement/reports/exportJobs/#{device_management_export_job_id}")
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
  @spec device_management_reports_export_jobs_get_count5277(Tesla.Env.client(), keyword()) ::
          {:ok, Integer.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_reports_export_jobs_get_count5277(connection, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/reports/exportJobs/$count")
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
  Get deviceManagementExportJob
  Read properties and relationships of the deviceManagementExportJob object.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `device_management_export_job_id` (String.t): The unique identifier of deviceManagementExportJob
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExportJob.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_reports_get_export_jobs(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExportJob.t()}
          | {:error, Tesla.Env.t()}
  def device_management_reports_get_export_jobs(
        connection,
        device_management_export_job_id,
        opts \\ []
      ) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/reports/exportJobs/#{device_management_export_job_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExportJob},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  List deviceManagementExportJobs
  List properties and relationships of the deviceManagementExportJob objects.

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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExportJobCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_reports_list_export_jobs(Tesla.Env.client(), keyword()) ::
          {:ok,
           MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExportJobCollectionResponse.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def device_management_reports_list_export_jobs(connection, opts \\ []) do
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
      |> url("/deviceManagement/reports/exportJobs")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExportJobCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update deviceManagementExportJob
  Update the properties of a deviceManagementExportJob object.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `device_management_export_job_id` (String.t): The unique identifier of deviceManagementExportJob
  - `microsoft_graph_device_management_export_job` (MicrosoftGraphDeviceManagementExportJob): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExportJob.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_reports_update_export_jobs(
          Tesla.Env.client(),
          String.t(),
          MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExportJob.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExportJob.t()}
          | {:error, Tesla.Env.t()}
  def device_management_reports_update_export_jobs(
        connection,
        device_management_export_job_id,
        microsoft_graph_device_management_export_job,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/deviceManagement/reports/exportJobs/#{device_management_export_job_id}")
      |> add_param(:body, :body, microsoft_graph_device_management_export_job)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExportJob},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update deviceManagementReports
  Update the properties of a deviceManagementReports object.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_device_management_reports` (MicrosoftGraphDeviceManagementReports): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementReports.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_update_reports(
          Tesla.Env.client(),
          MicrosoftGraph.Model.MicrosoftGraphDeviceManagementReports.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphDeviceManagementReports.t()}
          | {:error, Tesla.Env.t()}
  def device_management_update_reports(
        connection,
        microsoft_graph_device_management_reports,
        _opts \\ []
      ) do
    request =
      %{}
      |> method(:patch)
      |> url("/deviceManagement/reports")
      |> add_param(:body, :body, microsoft_graph_device_management_reports)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphDeviceManagementReports},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end
