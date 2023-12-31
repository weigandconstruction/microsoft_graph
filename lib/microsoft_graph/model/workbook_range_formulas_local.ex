# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.WorkbookRangeFormulasLocal do
  @moduledoc """
  Represents the formula in A1-style notation, in the user's language and number-formatting locale.  For example, the English '=SUM(A1, 1.5)' formula would become '=SUMME(A1; 1,5)' in German.
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
