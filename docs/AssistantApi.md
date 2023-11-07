# OpenAIClient::AssistantApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**modify_assistant**](AssistantApi.md#modify_assistant) | **POST** /assistants/{assistant_id} | Modifies an assistant.

# **modify_assistant**
> AssistantObject modify_assistant(bodyassistant_id)

Modifies an assistant.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantApi.new
body = OpenAIClient::ModifyAssistantRequest.new # ModifyAssistantRequest | 
assistant_id = 'assistant_id_example' # String | The ID of the assistant to modify.


begin
  #Modifies an assistant.
  result = api_instance.modify_assistant(bodyassistant_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantApi->modify_assistant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ModifyAssistantRequest**](ModifyAssistantRequest.md)|  | 
 **assistant_id** | **String**| The ID of the assistant to modify. | 

### Return type

[**AssistantObject**](AssistantObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



