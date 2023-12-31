# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DriveItemPendingOperations do
  @moduledoc """
  If present, indicates that one or more operations that might affect the state of the driveItem are pending completion. Read-only.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :pendingContentUpdate
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :pendingContentUpdate =>
            MicrosoftGraph.Model.MicrosoftGraphPendingOperationsPendingContentUpdate.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :pendingContentUpdate,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphPendingOperationsPendingContentUpdate
    )
  end
end
