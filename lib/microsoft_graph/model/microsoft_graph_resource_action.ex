# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphResourceAction do
  @moduledoc """
  Set of allowed and not allowed actions for a resource.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :allowedResourceActions,
    :notAllowedResourceActions
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :allowedResourceActions => [String.t] | nil,
    :notAllowedResourceActions => [String.t] | nil
  }

  def decode(value) do
    value
  end
end
