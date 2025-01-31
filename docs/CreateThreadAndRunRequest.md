# OpenAIClient::CreateThreadAndRunRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assistant_id** | **String** | The ID of the [assistant](/docs/api-reference/assistants) to use to execute this run. | 
**thread** | [**CreateThreadRequest**](CreateThreadRequest.md) |  | [optional] 
**model** | [**AnyOfCreateThreadAndRunRequestModel**](AnyOfCreateThreadAndRunRequestModel.md) | The ID of the [Model](/docs/api-reference/models) to be used to execute this run. If a value is provided here, it will override the model associated with the assistant. If not, the model associated with the assistant will be used. | [optional] 
**instructions** | **String** | Override the default system message of the assistant. This is useful for modifying the behavior on a per-run basis. | [optional] 
**tools** | [**Array&lt;OneOfCreateThreadAndRunRequestToolsItems&gt;**](.md) | Override the tools the assistant can use for this run. This is useful for modifying the behavior on a per-run basis. | [optional] 
**tool_resources** | [**CreateThreadAndRunRequestToolResources**](CreateThreadAndRunRequestToolResources.md) |  | [optional] 
**metadata** | [**Metadata**](Metadata.md) |  | [optional] 
**temperature** | [**BigDecimal**](BigDecimal.md) | What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic.  | [optional] [default to 1]
**top_p** | [**BigDecimal**](BigDecimal.md) | An alternative to sampling with temperature, called nucleus sampling, where the model considers the results of the tokens with top_p probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered.  We generally recommend altering this or temperature but not both.  | [optional] [default to 1]
**stream** | **BOOLEAN** | If &#x60;true&#x60;, returns a stream of events that happen during the Run as server-sent events, terminating when the Run enters a terminal state with a &#x60;data: [DONE]&#x60; message.  | [optional] 
**max_prompt_tokens** | **Integer** | The maximum number of prompt tokens that may be used over the course of the run. The run will make a best effort to use only the number of prompt tokens specified, across multiple turns of the run. If the run exceeds the number of prompt tokens specified, the run will end with status &#x60;incomplete&#x60;. See &#x60;incomplete_details&#x60; for more info.  | [optional] 
**max_completion_tokens** | **Integer** | The maximum number of completion tokens that may be used over the course of the run. The run will make a best effort to use only the number of completion tokens specified, across multiple turns of the run. If the run exceeds the number of completion tokens specified, the run will end with status &#x60;incomplete&#x60;. See &#x60;incomplete_details&#x60; for more info.  | [optional] 
**truncation_strategy** | [**AllOfCreateThreadAndRunRequestTruncationStrategy**](AllOfCreateThreadAndRunRequestTruncationStrategy.md) |  | [optional] 
**tool_choice** | [**AllOfCreateThreadAndRunRequestToolChoice**](AllOfCreateThreadAndRunRequestToolChoice.md) |  | [optional] 
**parallel_tool_calls** | [**ParallelToolCalls**](ParallelToolCalls.md) |  | [optional] 
**response_format** | [**AllOfCreateThreadAndRunRequestResponseFormat**](AllOfCreateThreadAndRunRequestResponseFormat.md) |  | [optional] 

