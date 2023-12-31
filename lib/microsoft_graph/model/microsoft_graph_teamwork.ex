# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphTeamwork do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :deletedTeams,
    :teamsAppSettings,
    :workforceIntegrations
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :deletedTeams => [MicrosoftGraph.Model.MicrosoftGraphDeletedTeam.t()] | nil,
          :teamsAppSettings => MicrosoftGraph.Model.TeamworkTeamsAppSettings.t() | nil,
          :workforceIntegrations =>
            [MicrosoftGraph.Model.MicrosoftGraphWorkforceIntegration.t()] | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :deletedTeams,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphDeletedTeam
    )
    |> Deserializer.deserialize(
      :teamsAppSettings,
      :struct,
      MicrosoftGraph.Model.TeamworkTeamsAppSettings
    )
    |> Deserializer.deserialize(
      :workforceIntegrations,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphWorkforceIntegration
    )
  end
end
