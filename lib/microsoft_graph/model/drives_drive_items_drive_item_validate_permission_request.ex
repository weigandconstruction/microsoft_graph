# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DrivesDriveItemsDriveItemValidatePermissionRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :challengeToken,
    :password
  ]

  @type t :: %__MODULE__{
    :challengeToken => String.t | nil,
    :password => String.t | nil
  }

  def decode(value) do
    value
  end
end
