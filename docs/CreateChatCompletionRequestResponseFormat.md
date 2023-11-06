# OpenAI::CreateChatCompletionRequestResponseFormat

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Setting to &#x60;json_object&#x60; enables JSON mode. This guarantees that the message the model generates is valid JSON.   Note that your system prompt must still instruct the model to produce JSON, and to help ensure you don&#x27;t forget, the API will throw an error if the string &#x60;JSON&#x60; does not appear in your system message. Also note that the message content may be partial (i.e. cut off) if &#x60;finish_reason&#x3D;\&quot;length\&quot;&#x60;, which indicates the generation exceeded &#x60;max_tokens&#x60; or the conversation exceeded the max context length.   Must be one of &#x60;text&#x60; or &#x60;json_object&#x60;.  | [optional] [default to &#x27;text&#x27;]

