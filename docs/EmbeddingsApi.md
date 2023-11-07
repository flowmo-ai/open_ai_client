# OpenAIClient::EmbeddingsApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_embedding**](EmbeddingsApi.md#create_embedding) | **POST** /embeddings | Creates an embedding vector representing the input text.

# **create_embedding**
> CreateEmbeddingResponse create_embedding(body)

Creates an embedding vector representing the input text.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::EmbeddingsApi.new
body = OpenAIClient::CreateEmbeddingRequest.new # CreateEmbeddingRequest | 


begin
  #Creates an embedding vector representing the input text.
  result = api_instance.create_embedding(body)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling EmbeddingsApi->create_embedding: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateEmbeddingRequest**](CreateEmbeddingRequest.md)|  | 

### Return type

[**CreateEmbeddingResponse**](CreateEmbeddingResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



