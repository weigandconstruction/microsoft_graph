# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSolutionsRoot do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :bookingBusinesses,
    :bookingCurrencies
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :bookingBusinesses => [MicrosoftGraph.Model.MicrosoftGraphBookingBusiness.t] | nil,
    :bookingCurrencies => [MicrosoftGraph.Model.MicrosoftGraphBookingCurrency.t] | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:bookingBusinesses, :list, MicrosoftGraph.Model.MicrosoftGraphBookingBusiness)
     |> Deserializer.deserialize(:bookingCurrencies, :list, MicrosoftGraph.Model.MicrosoftGraphBookingCurrency)
  end
end
