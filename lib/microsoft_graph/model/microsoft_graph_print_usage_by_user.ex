# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphPrintUsageByUser do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :blackAndWhitePageCount,
    :colorPageCount,
    :completedBlackAndWhiteJobCount,
    :completedColorJobCount,
    :completedJobCount,
    :doubleSidedSheetCount,
    :incompleteJobCount,
    :mediaSheetCount,
    :pageCount,
    :singleSidedSheetCount,
    :usageDate,
    :userPrincipalName
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :blackAndWhitePageCount => integer() | nil,
    :colorPageCount => integer() | nil,
    :completedBlackAndWhiteJobCount => integer() | nil,
    :completedColorJobCount => integer() | nil,
    :completedJobCount => integer() | nil,
    :doubleSidedSheetCount => integer() | nil,
    :incompleteJobCount => integer() | nil,
    :mediaSheetCount => integer() | nil,
    :pageCount => integer() | nil,
    :singleSidedSheetCount => integer() | nil,
    :usageDate => Date.t | nil,
    :userPrincipalName => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:usageDate, :date, nil)
  end
end
