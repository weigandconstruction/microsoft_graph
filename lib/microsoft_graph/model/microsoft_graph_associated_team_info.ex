# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAssociatedTeamInfo do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :displayName,
    :team,
    :tenantId
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :displayName => String.t | nil,
    :team => MicrosoftGraph.Model.TeamInfoTeam.t | nil,
    :tenantId => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:team, :struct, MicrosoftGraph.Model.TeamInfoTeam)
  end
end
