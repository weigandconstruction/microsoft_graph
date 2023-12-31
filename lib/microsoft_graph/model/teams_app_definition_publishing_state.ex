# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.TeamsAppDefinitionPublishingState do
  @moduledoc """
  The published status of a specific version of a Teams app. Possible values are:submitted—The specific version of the Teams app has been submitted and is under review. published—The request to publish the specific version of the Teams app has been approved by the admin and the app is published.  rejected—The admin rejected the request to publish the specific version of the Teams app.
  """

  @derive Jason.Encoder
  defstruct []

  @type t :: %__MODULE__{}

  def decode(value) do
    value
  end
end
