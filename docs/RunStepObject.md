# OpenAIClient::RunStepObject

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The identifier of the run step, which can be referenced in API endpoints. | 
**object** | **String** | The object type, which is always &#x60;thread.run.step&#x60;. | 
**created_at** | **Integer** | The Unix timestamp (in seconds) for when the run step was created. | 
**assistant_id** | **String** | The ID of the [assistant](/docs/api-reference/assistants) associated with the run step. | 
**thread_id** | **String** | The ID of the [thread](/docs/api-reference/threads) that was run. | 
**run_id** | **String** | The ID of the [run](/docs/api-reference/runs) that this run step is a part of. | 
**type** | **String** | The type of run step, which can be either &#x60;message_creation&#x60; or &#x60;tool_calls&#x60;. | 
**status** | **String** | The status of the run step, which can be either &#x60;in_progress&#x60;, &#x60;cancelled&#x60;, &#x60;failed&#x60;, &#x60;completed&#x60;, or &#x60;expired&#x60;. | 
**step_details** | **OneOfRunStepObjectStepDetails** | The details of the run step. | 
**last_error** | [**RunStepObjectLastError**](RunStepObjectLastError.md) |  | 
**expired_at** | **Integer** | The Unix timestamp (in seconds) for when the run step expired. A step is considered expired if the parent run is expired. | 
**cancelled_at** | **Integer** | The Unix timestamp (in seconds) for when the run step was cancelled. | 
**failed_at** | **Integer** | The Unix timestamp (in seconds) for when the run step failed. | 
**completed_at** | **Integer** | The Unix timestamp (in seconds) for when the run step completed. | 
**metadata** | [**Metadata**](Metadata.md) |  | 
**usage** | [**RunStepCompletionUsage**](RunStepCompletionUsage.md) |  | 

