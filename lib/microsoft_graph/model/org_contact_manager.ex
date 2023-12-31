# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.OrgContactManager do
  @moduledoc """
  The user or contact that is this contact's manager. Read-only. Supports $expand and $filter (eq) by id.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :deletedDateTime
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :deletedDateTime => DateTime.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:deletedDateTime, :datetime, nil)
  end
end
