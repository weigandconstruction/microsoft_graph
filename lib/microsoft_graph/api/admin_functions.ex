# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.AdminFunctions do
  @moduledoc """
  API calls for all endpoints tagged `AdminFunctions`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Invoke function incidentReport

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `service_health_id` (String.t): The unique identifier of serviceHealth
  - `service_health_issue_id` (String.t): The unique identifier of serviceHealthIssue
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.DeviceManagementReportsGetDevicesWithoutCompliancePolicyReport2XxResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec admin_service_announcement_health_overviews_service_health_issues_service_health_issue_incident_report(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.DeviceManagementReportsGetDevicesWithoutCompliancePolicyReport2XxResponse.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def admin_service_announcement_health_overviews_service_health_issues_service_health_issue_incident_report(connection, service_health_id, service_health_issue_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/admin/serviceAnnouncement/healthOverviews/#{service_health_id}/issues/#{service_health_issue_id}/incidentReport()")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.DeviceManagementReportsGetDevicesWithoutCompliancePolicyReport2XxResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function incidentReport

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `service_health_issue_id` (String.t): The unique identifier of serviceHealthIssue
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.DeviceManagementReportsGetDevicesWithoutCompliancePolicyReport2XxResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec admin_service_announcement_issues_service_health_issue_incident_report(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.DeviceManagementReportsGetDevicesWithoutCompliancePolicyReport2XxResponse.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def admin_service_announcement_issues_service_health_issue_incident_report(connection, service_health_issue_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/admin/serviceAnnouncement/issues/#{service_health_issue_id}/incidentReport()")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.DeviceManagementReportsGetDevicesWithoutCompliancePolicyReport2XxResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end