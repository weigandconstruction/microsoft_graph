# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphResultTemplate do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :body,
    :displayName
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :body => MicrosoftGraph.Model.MicrosoftGraphResultTemplateBody.t | nil,
    :displayName => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:body, :struct, MicrosoftGraph.Model.MicrosoftGraphResultTemplateBody)
  end
end
