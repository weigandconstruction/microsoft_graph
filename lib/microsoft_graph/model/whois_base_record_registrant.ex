# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.WhoisBaseRecordRegistrant do
  @moduledoc """
  The contact information for the registrant contact.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :address,
    :email,
    :fax,
    :name,
    :organization,
    :telephone
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :address => MicrosoftGraph.Model.MicrosoftGraphSecurityWhoisContactAddress.t | nil,
    :email => String.t | nil,
    :fax => String.t | nil,
    :name => String.t | nil,
    :organization => String.t | nil,
    :telephone => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:address, :struct, MicrosoftGraph.Model.MicrosoftGraphSecurityWhoisContactAddress)
  end
end
