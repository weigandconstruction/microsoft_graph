# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphArchivedPrintJob do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :acquiredByPrinter,
    :acquiredDateTime,
    :completionDateTime,
    :copiesPrinted,
    :createdBy,
    :createdDateTime,
    :id,
    :printerId,
    :printerName,
    :processingState
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :acquiredByPrinter => boolean() | nil,
    :acquiredDateTime => DateTime.t | nil,
    :completionDateTime => DateTime.t | nil,
    :copiesPrinted => integer() | nil,
    :createdBy => MicrosoftGraph.Model.MicrosoftGraphArchivedPrintJobCreatedBy.t | nil,
    :createdDateTime => DateTime.t | nil,
    :id => String.t | nil,
    :printerId => String.t | nil,
    :printerName => String.t | nil,
    :processingState => MicrosoftGraph.Model.MicrosoftGraphPrintJobProcessingState.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:acquiredDateTime, :datetime, nil)
     |> Deserializer.deserialize(:completionDateTime, :datetime, nil)
     |> Deserializer.deserialize(:createdBy, :struct, MicrosoftGraph.Model.MicrosoftGraphArchivedPrintJobCreatedBy)
     |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
     |> Deserializer.deserialize(:processingState, :struct, MicrosoftGraph.Model.MicrosoftGraphPrintJobProcessingState)
  end
end
