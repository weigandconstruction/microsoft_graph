# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphManagedAppStatusRaw do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :displayName,
    :version,
    :content
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :displayName => String.t | nil,
    :version => String.t | nil,
    :content => MicrosoftGraph.Model.ManagedAppStatusRawContent.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:content, :struct, MicrosoftGraph.Model.ManagedAppStatusRawContent)
  end
end
