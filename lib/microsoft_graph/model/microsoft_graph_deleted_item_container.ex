# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphDeletedItemContainer do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :workflows
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :workflows => [MicrosoftGraph.Model.MicrosoftGraphIdentityGovernanceWorkflow.t()] | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :workflows,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphIdentityGovernanceWorkflow
    )
  end
end
