# OpenAIClient::RealtimeServerEventResponseFunctionCallArgumentsDelta

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event_id** | **String** | The unique ID of the server event. | 
**type** | **String** | The event type, must be &#x60;response.function_call_arguments.delta&#x60;.  | 
**response_id** | **String** | The ID of the response. | 
**item_id** | **String** | The ID of the function call item. | 
**output_index** | **Integer** | The index of the output item in the response. | 
**call_id** | **String** | The ID of the function call. | 
**delta** | **String** | The arguments delta as a JSON string. | 

