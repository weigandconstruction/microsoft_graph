# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSharePointOneDriveOptions do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :includeContent
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :includeContent =>
            MicrosoftGraph.Model.MicrosoftGraphSharePointOneDriveOptionsIncludeContent.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :includeContent,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphSharePointOneDriveOptionsIncludeContent
    )
  end
end
