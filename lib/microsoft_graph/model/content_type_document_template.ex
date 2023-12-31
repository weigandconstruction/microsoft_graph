# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.ContentTypeDocumentTemplate do
  @moduledoc """
  Document template metadata. To make sure that documents have consistent content across a site and its subsites, you can associate a Word, Excel, or PowerPoint template with a site content type.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :contentType,
    :fileName,
    :folderName
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :contentType =>
            MicrosoftGraph.Model.MicrosoftGraphDocumentSetContentContentType.t() | nil,
          :fileName => String.t() | nil,
          :folderName => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :contentType,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphDocumentSetContentContentType
    )
  end
end
