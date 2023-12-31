# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphPasswordProfile do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :forceChangePasswordNextSignIn,
    :forceChangePasswordNextSignInWithMfa,
    :password
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :forceChangePasswordNextSignIn => boolean() | nil,
          :forceChangePasswordNextSignInWithMfa => boolean() | nil,
          :password => String.t() | nil
        }

  def decode(value) do
    value
  end
end
