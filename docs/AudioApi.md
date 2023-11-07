# OpenAIClient::AudioApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_speech**](AudioApi.md#create_speech) | **POST** /audio/speech | Generates audio from the input text.
[**create_transcription**](AudioApi.md#create_transcription) | **POST** /audio/transcriptions | Transcribes audio into the input language.
[**create_translation**](AudioApi.md#create_translation) | **POST** /audio/translations | Translates audio into English.

# **create_speech**
> String create_speech(body)

Generates audio from the input text.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AudioApi.new
body = OpenAIClient::CreateSpeechRequest.new # CreateSpeechRequest | 


begin
  #Generates audio from the input text.
  result = api_instance.create_speech(body)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AudioApi->create_speech: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateSpeechRequest**](CreateSpeechRequest.md)|  | 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream



# **create_transcription**
> CreateTranscriptionResponse create_transcription(filemodellanguagepromptresponse_formattemperature)

Transcribes audio into the input language.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AudioApi.new
file = 'file_example' # String | 
model = OpenAIClient::null.new #  | 
language = 'language_example' # String | 
prompt = 'prompt_example' # String | 
response_format = 'response_format_example' # String | 
temperature = OpenAIClient::BigDecimal.new # BigDecimal | 


begin
  #Transcribes audio into the input language.
  result = api_instance.create_transcription(filemodellanguagepromptresponse_formattemperature)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AudioApi->create_transcription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **String**|  | 
 **model** | [****](.md)|  | 
 **language** | **String**|  | 
 **prompt** | **String**|  | 
 **response_format** | **String**|  | 
 **temperature** | **BigDecimal**|  | 

### Return type

[**CreateTranscriptionResponse**](CreateTranscriptionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_translation**
> CreateTranslationResponse create_translation(filemodelpromptresponse_formattemperature)

Translates audio into English.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AudioApi.new
file = 'file_example' # String | 
model = OpenAIClient::null.new #  | 
prompt = 'prompt_example' # String | 
response_format = 'response_format_example' # String | 
temperature = OpenAIClient::BigDecimal.new # BigDecimal | 


begin
  #Translates audio into English.
  result = api_instance.create_translation(filemodelpromptresponse_formattemperature)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AudioApi->create_translation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **String**|  | 
 **model** | [****](.md)|  | 
 **prompt** | **String**|  | 
 **response_format** | **String**|  | 
 **temperature** | **BigDecimal**|  | 

### Return type

[**CreateTranslationResponse**](CreateTranslationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



