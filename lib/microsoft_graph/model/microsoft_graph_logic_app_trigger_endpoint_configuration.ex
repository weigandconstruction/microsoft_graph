# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphLogicAppTriggerEndpointConfiguration do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :logicAppWorkflowName,
    :resourceGroupName,
    :subscriptionId,
    :url
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :logicAppWorkflowName => String.t | nil,
    :resourceGroupName => String.t | nil,
    :subscriptionId => String.t | nil,
    :url => String.t | nil
  }

  def decode(value) do
    value
  end
end
