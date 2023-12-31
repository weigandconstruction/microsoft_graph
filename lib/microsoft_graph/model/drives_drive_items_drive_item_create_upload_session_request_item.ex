# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DrivesDriveItemsDriveItemCreateUploadSessionRequestItem do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :description,
    :fileSize,
    :fileSystemInfo,
    :name
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :description => String.t() | nil,
          :fileSize => integer() | nil,
          :fileSystemInfo => MicrosoftGraph.Model.DriveItemFileSystemInfo.t() | nil,
          :name => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :fileSystemInfo,
      :struct,
      MicrosoftGraph.Model.DriveItemFileSystemInfo
    )
  end
end
