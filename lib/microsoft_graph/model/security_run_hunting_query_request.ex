# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.SecurityRunHuntingQueryRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :query
  ]

  @type t :: %__MODULE__{
          :query => String.t() | nil
        }

  def decode(value) do
    value
  end
end
