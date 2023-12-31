# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphApplicationTemplate do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :categories,
    :description,
    :displayName,
    :homePageUrl,
    :logoUrl,
    :publisher,
    :supportedProvisioningTypes,
    :supportedSingleSignOnModes
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :categories => [String.t()] | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :homePageUrl => String.t() | nil,
          :logoUrl => String.t() | nil,
          :publisher => String.t() | nil,
          :supportedProvisioningTypes => [String.t()] | nil,
          :supportedSingleSignOnModes => [String.t()] | nil
        }

  def decode(value) do
    value
  end
end
