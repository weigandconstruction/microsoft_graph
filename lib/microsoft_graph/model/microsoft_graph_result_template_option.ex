# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphResultTemplateOption do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :enableResultTemplate
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :enableResultTemplate => boolean() | nil
        }

  def decode(value) do
    value
  end
end
