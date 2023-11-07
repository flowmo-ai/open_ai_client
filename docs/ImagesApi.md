# OpenAIClient::ImagesApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_image**](ImagesApi.md#create_image) | **POST** /images/generations | Creates an image given a prompt.
[**create_image_edit**](ImagesApi.md#create_image_edit) | **POST** /images/edits | Creates an edited or extended image given an original image and a prompt.
[**create_image_variation**](ImagesApi.md#create_image_variation) | **POST** /images/variations | Creates a variation of a given image.

# **create_image**
> ImagesResponse create_image(body)

Creates an image given a prompt.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::ImagesApi.new
body = OpenAIClient::CreateImageRequest.new # CreateImageRequest | 


begin
  #Creates an image given a prompt.
  result = api_instance.create_image(body)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling ImagesApi->create_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateImageRequest**](CreateImageRequest.md)|  | 

### Return type

[**ImagesResponse**](ImagesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_image_edit**
> ImagesResponse create_image_edit(imagepromptmaskmodelnsizeresponse_formatuser)

Creates an edited or extended image given an original image and a prompt.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::ImagesApi.new
image = 'image_example' # String | 
prompt = 'prompt_example' # String | 
mask = 'mask_example' # String | 
model = OpenAIClient::null.new #  | 
n = 56 # Integer | 
size = 'size_example' # String | 
response_format = 'response_format_example' # String | 
user = 'user_example' # String | 


begin
  #Creates an edited or extended image given an original image and a prompt.
  result = api_instance.create_image_edit(imagepromptmaskmodelnsizeresponse_formatuser)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling ImagesApi->create_image_edit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image** | **String**|  | 
 **prompt** | **String**|  | 
 **mask** | **String**|  | 
 **model** | [****](.md)|  | 
 **n** | **Integer**|  | 
 **size** | **String**|  | 
 **response_format** | **String**|  | 
 **user** | **String**|  | 

### Return type

[**ImagesResponse**](ImagesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_image_variation**
> ImagesResponse create_image_variation(imagemodelnresponse_formatsizeuser)

Creates a variation of a given image.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::ImagesApi.new
image = 'image_example' # String | 
model = OpenAIClient::null.new #  | 
n = 56 # Integer | 
response_format = 'response_format_example' # String | 
size = 'size_example' # String | 
user = 'user_example' # String | 


begin
  #Creates a variation of a given image.
  result = api_instance.create_image_variation(imagemodelnresponse_formatsizeuser)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling ImagesApi->create_image_variation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image** | **String**|  | 
 **model** | [****](.md)|  | 
 **n** | **Integer**|  | 
 **response_format** | **String**|  | 
 **size** | **String**|  | 
 **user** | **String**|  | 

### Return type

[**ImagesResponse**](ImagesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



