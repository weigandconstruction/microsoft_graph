# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.PlannerTaskAppliedCategories do
  @moduledoc """
  The categories to which the task has been applied. See applied Categories for possible values.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type"
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t()
        }

  def decode(value) do
    value
  end
end
