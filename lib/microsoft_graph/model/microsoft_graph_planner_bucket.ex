# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphPlannerBucket do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :name,
    :orderHint,
    :planId,
    :tasks
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :name => String.t | nil,
    :orderHint => String.t | nil,
    :planId => String.t | nil,
    :tasks => [MicrosoftGraph.Model.MicrosoftGraphPlannerTask.t] | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:tasks, :list, MicrosoftGraph.Model.MicrosoftGraphPlannerTask)
  end
end
