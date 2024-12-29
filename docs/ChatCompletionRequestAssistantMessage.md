# OpenAIClient::ChatCompletionRequestAssistantMessage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**OneOfChatCompletionRequestAssistantMessageContent**](OneOfChatCompletionRequestAssistantMessageContent.md) | The contents of the assistant message. Required unless &#x60;tool_calls&#x60; or &#x60;function_call&#x60; is specified.  | [optional] 
**refusal** | **String** | The refusal message by the assistant. | [optional] 
**role** | **String** | The role of the messages author, in this case &#x60;assistant&#x60;. | 
**name** | **String** | An optional name for the participant. Provides the model information to differentiate between participants of the same role. | [optional] 
**audio** | [**ChatCompletionRequestAssistantMessageAudio**](ChatCompletionRequestAssistantMessageAudio.md) |  | [optional] 
**tool_calls** | [**ChatCompletionMessageToolCalls**](ChatCompletionMessageToolCalls.md) |  | [optional] 
**function_call** | [**ChatCompletionRequestAssistantMessageFunctionCall**](ChatCompletionRequestAssistantMessageFunctionCall.md) |  | [optional] 

