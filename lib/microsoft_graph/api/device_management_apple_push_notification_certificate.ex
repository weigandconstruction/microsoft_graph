# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.DeviceManagementApplePushNotificationCertificate do
  @moduledoc """
  API calls for all endpoints tagged `DeviceManagementApplePushNotificationCertificate`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Delete navigation property applePushNotificationCertificate for deviceManagement

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_delete_apple_push_notification_certificate(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def device_management_delete_apple_push_notification_certificate(connection, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/deviceManagement/applePushNotificationCertificate")
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
  Get applePushNotificationCertificate
  Read properties and relationships of the applePushNotificationCertificate object.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphApplePushNotificationCertificate.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_get_apple_push_notification_certificate(Tesla.Env.client, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphApplePushNotificationCertificate.t} | {:error, Tesla.Env.t}
  def device_management_get_apple_push_notification_certificate(connection, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/deviceManagement/applePushNotificationCertificate")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphApplePushNotificationCertificate},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update applePushNotificationCertificate
  Update the properties of a applePushNotificationCertificate object.

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_apple_push_notification_certificate` (MicrosoftGraphApplePushNotificationCertificate): New navigation property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphApplePushNotificationCertificate.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec device_management_update_apple_push_notification_certificate(Tesla.Env.client, MicrosoftGraph.Model.MicrosoftGraphApplePushNotificationCertificate.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphApplePushNotificationCertificate.t} | {:error, Tesla.Env.t}
  def device_management_update_apple_push_notification_certificate(connection, microsoft_graph_apple_push_notification_certificate, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/deviceManagement/applePushNotificationCertificate")
      |> add_param(:body, :body, microsoft_graph_apple_push_notification_certificate)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphApplePushNotificationCertificate},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end