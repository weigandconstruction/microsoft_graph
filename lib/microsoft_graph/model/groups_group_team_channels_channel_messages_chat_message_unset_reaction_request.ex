# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.GroupsGroupTeamChannelsChannelMessagesChatMessageUnsetReactionRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :reactionType
  ]

  @type t :: %__MODULE__{
          :reactionType => String.t() | nil
        }

  def decode(value) do
    value
  end
end
