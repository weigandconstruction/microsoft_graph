# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.AccessPackageAssignmentRequestAssignment do
  @moduledoc """
  For a requestType of userAdd or adminAdd, this is an access package assignment requested to be created.  For a requestType of userRemove, adminRemove or systemRemove, this has the id property of an existing assignment to be removed.   Supports $expand.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :accessPackage,
    :assignmentPolicy,
    :customExtensionCalloutInstances,
    :expiredDateTime,
    :schedule,
    :state,
    :status,
    :target
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :accessPackage => MicrosoftGraph.Model.AccessPackageAssignmentAccessPackage.t | nil,
    :assignmentPolicy => MicrosoftGraph.Model.AccessPackageAssignmentAssignmentPolicy.t | nil,
    :customExtensionCalloutInstances => [MicrosoftGraph.Model.AccessPackageAssignmentCustomExtensionCalloutInstancesInner.t] | nil,
    :expiredDateTime => DateTime.t | nil,
    :schedule => MicrosoftGraph.Model.AccessPackageAssignmentSchedule.t | nil,
    :state => MicrosoftGraph.Model.AccessPackageAssignmentState.t | nil,
    :status => String.t | nil,
    :target => MicrosoftGraph.Model.AccessPackageAssignmentTarget.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:accessPackage, :struct, MicrosoftGraph.Model.AccessPackageAssignmentAccessPackage)
     |> Deserializer.deserialize(:assignmentPolicy, :struct, MicrosoftGraph.Model.AccessPackageAssignmentAssignmentPolicy)
     |> Deserializer.deserialize(:customExtensionCalloutInstances, :list, MicrosoftGraph.Model.AccessPackageAssignmentCustomExtensionCalloutInstancesInner)
     |> Deserializer.deserialize(:expiredDateTime, :datetime, nil)
     |> Deserializer.deserialize(:schedule, :struct, MicrosoftGraph.Model.AccessPackageAssignmentSchedule)
     |> Deserializer.deserialize(:state, :struct, MicrosoftGraph.Model.AccessPackageAssignmentState)
     |> Deserializer.deserialize(:target, :struct, MicrosoftGraph.Model.AccessPackageAssignmentTarget)
  end
end
