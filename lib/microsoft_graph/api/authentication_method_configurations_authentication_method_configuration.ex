# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.AuthenticationMethodConfigurationsAuthenticationMethodConfiguration do
  @moduledoc """
  API calls for all endpoints tagged `AuthenticationMethodConfigurationsAuthenticationMethodConfiguration`.
  """

  alias MicrosoftGraph.Connection
  import MicrosoftGraph.RequestBuilder

  @doc """
  Add new entity to authenticationMethodConfigurations

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `microsoft_graph_authentication_method_configuration` (MicrosoftGraphAuthenticationMethodConfiguration): New entity
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodConfiguration.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec authentication_method_configurations_authentication_method_configuration_create_authentication_method_configuration(Tesla.Env.client, MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodConfiguration.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodConfiguration.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def authentication_method_configurations_authentication_method_configuration_create_authentication_method_configuration(connection, microsoft_graph_authentication_method_configuration, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/authenticationMethodConfigurations")
      |> add_param(:body, :body, microsoft_graph_authentication_method_configuration)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodConfiguration},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Delete entity from authenticationMethodConfigurations

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `authentication_method_configuration_id` (String.t): The unique identifier of authenticationMethodConfiguration
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` (String.t): ETag

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec authentication_method_configurations_authentication_method_configuration_delete_authentication_method_configuration(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def authentication_method_configurations_authentication_method_configuration_delete_authentication_method_configuration(connection, authentication_method_configuration_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }

    request =
      %{}
      |> method(:delete)
      |> url("/authenticationMethodConfigurations/#{authentication_method_configuration_id}")
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
  Get entity from authenticationMethodConfigurations by key

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `authentication_method_configuration_id` (String.t): The unique identifier of authenticationMethodConfiguration
  - `opts` (keyword): Optional parameters
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$expand"` ([String.t]): Expand related entities

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodConfiguration.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec authentication_method_configurations_authentication_method_configuration_get_authentication_method_configuration(Tesla.Env.client, String.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodConfiguration.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def authentication_method_configurations_authentication_method_configuration_get_authentication_method_configuration(connection, authentication_method_configuration_id, opts \\ []) do
    optional_params = %{
      :"$select" => :query,
      :"$expand" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/authenticationMethodConfigurations/#{authentication_method_configuration_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodConfiguration},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Get entities from authenticationMethodConfigurations

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

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodConfigurationCollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec authentication_method_configurations_authentication_method_configuration_list_authentication_method_configuration(Tesla.Env.client, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodConfigurationCollectionResponse.t} | {:error, Tesla.Env.t}
  def authentication_method_configurations_authentication_method_configuration_list_authentication_method_configuration(connection, opts \\ []) do
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
      |> url("/authenticationMethodConfigurations")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodConfigurationCollectionResponse},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Update entity in authenticationMethodConfigurations

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `authentication_method_configuration_id` (String.t): The unique identifier of authenticationMethodConfiguration
  - `microsoft_graph_authentication_method_configuration` (MicrosoftGraphAuthenticationMethodConfiguration): New property values
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodConfiguration.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec authentication_method_configurations_authentication_method_configuration_update_authentication_method_configuration(Tesla.Env.client, String.t, MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodConfiguration.t, keyword()) :: {:ok, MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodConfiguration.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def authentication_method_configurations_authentication_method_configuration_update_authentication_method_configuration(connection, authentication_method_configuration_id, microsoft_graph_authentication_method_configuration, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/authenticationMethodConfigurations/#{authentication_method_configuration_id}")
      |> add_param(:body, :body, microsoft_graph_authentication_method_configuration)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.MicrosoftGraphAuthenticationMethodConfiguration},
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
  @spec authentication_method_configurations_get_count6d53(Tesla.Env.client, keyword()) :: {:ok, Integer.t} | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t} | {:error, Tesla.Env.t}
  def authentication_method_configurations_get_count6d53(connection, opts \\ []) do
    optional_params = %{
      :"$search" => :query,
      :"$filter" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/authenticationMethodConfigurations/$count")
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