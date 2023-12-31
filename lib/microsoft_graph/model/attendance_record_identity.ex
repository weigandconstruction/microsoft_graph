# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.AttendanceRecordIdentity do
  @moduledoc """
  Identity of the user associated with this attendance record.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :displayName,
    :id
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :displayName => String.t() | nil,
          :id => String.t() | nil
        }

  def decode(value) do
    value
  end
end
