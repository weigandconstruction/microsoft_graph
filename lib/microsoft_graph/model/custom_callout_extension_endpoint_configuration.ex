# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.CustomCalloutExtensionEndpointConfiguration do
  @moduledoc """
  The type and details for configuring the endpoint to call the logic app's workflow.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type"
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t
  }

  def decode(value) do
    value
  end
end
