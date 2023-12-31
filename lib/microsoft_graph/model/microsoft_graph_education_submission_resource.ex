# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphEducationSubmissionResource do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :assignmentResourceUrl,
    :resource
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :assignmentResourceUrl => String.t() | nil,
          :resource => MicrosoftGraph.Model.EducationSubmissionResourceResource.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :resource,
      :struct,
      MicrosoftGraph.Model.EducationSubmissionResourceResource
    )
  end
end
