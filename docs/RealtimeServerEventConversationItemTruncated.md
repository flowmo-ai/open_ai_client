# OpenAIClient::RealtimeServerEventConversationItemTruncated

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event_id** | **String** | The unique ID of the server event. | 
**type** | **String** | The event type, must be &#x60;conversation.item.truncated&#x60;. | 
**item_id** | **String** | The ID of the assistant message item that was truncated. | 
**content_index** | **Integer** | The index of the content part that was truncated. | 
**audio_end_ms** | **Integer** | The duration up to which the audio was truncated, in milliseconds.  | 

