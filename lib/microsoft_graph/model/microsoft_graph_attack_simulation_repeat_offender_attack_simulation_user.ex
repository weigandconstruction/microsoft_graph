# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAttackSimulationRepeatOffenderAttackSimulationUser do
  @moduledoc """
  The user in an attack simulation and training campaign.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :displayName,
    :email,
    :userId
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :displayName => String.t | nil,
    :email => String.t | nil,
    :userId => String.t | nil
  }

  def decode(value) do
    value
  end
end
