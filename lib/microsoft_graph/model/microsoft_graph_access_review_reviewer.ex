# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAccessReviewReviewer do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :createdDateTime,
    :displayName,
    :userPrincipalName
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :createdDateTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :userPrincipalName => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
  end
end
