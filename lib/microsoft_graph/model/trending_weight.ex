# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.TrendingWeight do
  @moduledoc """
  Value indicating how much the document is currently trending. The larger the number, the more the document is currently trending around the user (the more relevant it is). Returned documents are sorted by this value.
  """

  @derive Jason.Encoder
  defstruct [
    
  ]

  @type t :: %__MODULE__{
    
  }

  def decode(value) do
    value
  end
end
