# OpenAIClient::RealtimeServerEventResponseContentPartAdded

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event_id** | **String** | The unique ID of the server event. | 
**type** | **String** | The event type, must be &#x60;response.content_part.added&#x60;. | 
**response_id** | **String** | The ID of the response. | 
**item_id** | **String** | The ID of the item to which the content part was added. | 
**output_index** | **Integer** | The index of the output item in the response. | 
**content_index** | **Integer** | The index of the content part in the item&#x27;s content array. | 
**part** | [**RealtimeServerEventResponseContentPartAddedPart**](RealtimeServerEventResponseContentPartAddedPart.md) |  | 

