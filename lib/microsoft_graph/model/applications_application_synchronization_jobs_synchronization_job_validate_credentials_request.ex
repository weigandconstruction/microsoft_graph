# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.ApplicationsApplicationSynchronizationJobsSynchronizationJobValidateCredentialsRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :applicationIdentifier,
    :credentials,
    :templateId,
    :useSavedCredentials
  ]

  @type t :: %__MODULE__{
          :applicationIdentifier => String.t() | nil,
          :credentials =>
            [
              MicrosoftGraph.Model.ApplicationsApplicationSynchronizationJobsSynchronizationJobValidateCredentialsRequestCredentialsInner.t()
            ]
            | nil,
          :templateId => String.t() | nil,
          :useSavedCredentials => boolean() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :credentials,
      :list,
      MicrosoftGraph.Model.ApplicationsApplicationSynchronizationJobsSynchronizationJobValidateCredentialsRequestCredentialsInner
    )
  end
end
