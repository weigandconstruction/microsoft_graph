# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphIosVppEBookAssignment do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :installIntent,
    :target
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :installIntent => MicrosoftGraph.Model.MicrosoftGraphInstallIntent.t | nil,
    :target => MicrosoftGraph.Model.ManagedEBookAssignmentTarget.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:installIntent, :struct, MicrosoftGraph.Model.MicrosoftGraphInstallIntent)
     |> Deserializer.deserialize(:target, :struct, MicrosoftGraph.Model.ManagedEBookAssignmentTarget)
  end
end
