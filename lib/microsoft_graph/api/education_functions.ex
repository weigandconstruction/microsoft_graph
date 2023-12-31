# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Api.EducationFunctions do
  @moduledoc """
  API calls for all endpoints tagged `EducationFunctions`.
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

  - `{:ok, MicrosoftGraph.Model.CollectionOfEducationClass.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec education_classes_delta(Tesla.Env.client(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.CollectionOfEducationClass.t()}
          | {:error, Tesla.Env.t()}
  def education_classes_delta(connection, opts \\ []) do
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
      |> url("/education/classes/delta()")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfEducationClass},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function delta

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `education_class_id` (String.t): The unique identifier of educationClass
  - `opts` (keyword): Optional parameters
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$orderby"` ([String.t]): Order items by property values

  ### Returns

  - `{:ok, MicrosoftGraph.Model.CollectionOfEducationCategory.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec education_classes_education_class_assignment_categories_delta(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.CollectionOfEducationCategory.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def education_classes_education_class_assignment_categories_delta(
        connection,
        education_class_id,
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
      |> url("/education/classes/#{education_class_id}/assignmentCategories/delta()")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfEducationCategory},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function delta

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `education_class_id` (String.t): The unique identifier of educationClass
  - `opts` (keyword): Optional parameters
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$orderby"` ([String.t]): Order items by property values

  ### Returns

  - `{:ok, MicrosoftGraph.Model.CollectionOfEducationAssignment.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec education_classes_education_class_assignments_delta(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.CollectionOfEducationAssignment.t()}
          | {:error, Tesla.Env.t()}
  def education_classes_education_class_assignments_delta(
        connection,
        education_class_id,
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
      |> url("/education/classes/#{education_class_id}/assignments/delta()")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfEducationAssignment},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function delta

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `education_class_id` (String.t): The unique identifier of educationClass
  - `education_assignment_id` (String.t): The unique identifier of educationAssignment
  - `opts` (keyword): Optional parameters
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$orderby"` ([String.t]): Order items by property values

  ### Returns

  - `{:ok, MicrosoftGraph.Model.CollectionOfEducationCategory.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec education_classes_education_class_assignments_education_assignment_categories_delta(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.CollectionOfEducationCategory.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def education_classes_education_class_assignments_education_assignment_categories_delta(
        connection,
        education_class_id,
        education_assignment_id,
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
        "/education/classes/#{education_class_id}/assignments/#{education_assignment_id}/categories/delta()"
      )
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfEducationCategory},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

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

  - `{:ok, MicrosoftGraph.Model.CollectionOfEducationAssignment.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec education_me_assignments_delta(Tesla.Env.client(), keyword()) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.CollectionOfEducationAssignment.t()}
          | {:error, Tesla.Env.t()}
  def education_me_assignments_delta(connection, opts \\ []) do
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
      |> url("/education/me/assignments/delta()")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfEducationAssignment},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function delta

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `education_assignment_id` (String.t): The unique identifier of educationAssignment
  - `opts` (keyword): Optional parameters
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$orderby"` ([String.t]): Order items by property values

  ### Returns

  - `{:ok, MicrosoftGraph.Model.CollectionOfEducationCategory.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec education_me_assignments_education_assignment_categories_delta(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.CollectionOfEducationCategory.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def education_me_assignments_education_assignment_categories_delta(
        connection,
        education_assignment_id,
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
      |> url("/education/me/assignments/#{education_assignment_id}/categories/delta()")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfEducationCategory},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

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

  - `{:ok, MicrosoftGraph.Model.CollectionOfEducationSchool.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec education_schools_delta(Tesla.Env.client(), keyword()) ::
          {:ok, MicrosoftGraph.Model.CollectionOfEducationSchool.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def education_schools_delta(connection, opts \\ []) do
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
      |> url("/education/schools/delta()")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfEducationSchool},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

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

  - `{:ok, MicrosoftGraph.Model.CollectionOfEducationUser.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec education_users_delta(Tesla.Env.client(), keyword()) ::
          {:ok, MicrosoftGraph.Model.CollectionOfEducationUser.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def education_users_delta(connection, opts \\ []) do
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
      |> url("/education/users/delta()")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfEducationUser},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function delta

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `education_user_id` (String.t): The unique identifier of educationUser
  - `opts` (keyword): Optional parameters
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$orderby"` ([String.t]): Order items by property values

  ### Returns

  - `{:ok, MicrosoftGraph.Model.CollectionOfEducationAssignment.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec education_users_education_user_assignments_delta(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:ok, MicrosoftGraph.Model.CollectionOfEducationAssignment.t()}
          | {:error, Tesla.Env.t()}
  def education_users_education_user_assignments_delta(connection, education_user_id, opts \\ []) do
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
      |> url("/education/users/#{education_user_id}/assignments/delta()")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfEducationAssignment},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end

  @doc """
  Invoke function delta

  ### Parameters

  - `connection` (MicrosoftGraph.Connection): Connection to server
  - `education_user_id` (String.t): The unique identifier of educationUser
  - `education_assignment_id` (String.t): The unique identifier of educationAssignment
  - `opts` (keyword): Optional parameters
    - `:"$top"` (integer()): Show only the first n items
    - `:"$skip"` (integer()): Skip the first n items
    - `:"$search"` (String.t): Search items by search phrases
    - `:"$filter"` (String.t): Filter items by property values
    - `:"$count"` (boolean()): Include count of items
    - `:"$select"` ([String.t]): Select properties to be returned
    - `:"$orderby"` ([String.t]): Order items by property values

  ### Returns

  - `{:ok, MicrosoftGraph.Model.CollectionOfEducationCategory.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec education_users_education_user_assignments_education_assignment_categories_delta(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, MicrosoftGraph.Model.CollectionOfEducationCategory.t()}
          | {:ok, MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError.t()}
          | {:error, Tesla.Env.t()}
  def education_users_education_user_assignments_education_assignment_categories_delta(
        connection,
        education_user_id,
        education_assignment_id,
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
        "/education/users/#{education_user_id}/assignments/#{education_assignment_id}/categories/delta()"
      )
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {"2XX", MicrosoftGraph.Model.CollectionOfEducationCategory},
      {"4XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError},
      {"5XX", MicrosoftGraph.Model.MicrosoftGraphODataErrorsODataError}
    ])
  end
end
