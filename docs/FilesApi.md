# OpenAIClient::FilesApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_file**](FilesApi.md#create_file) | **POST** /files | Upload a file that can be used across various endpoints. Individual files can be up to 512 MB, and the size of all files uploaded by one organization can be up to 100 GB.  The Assistants API supports files up to 2 million tokens and of specific file types. See the [Assistants Tools guide](/docs/assistants/tools) for details.  The Fine-tuning API only supports &#x60;.jsonl&#x60; files. The input also has certain required formats for fine-tuning [chat](/docs/api-reference/fine-tuning/chat-input) or [completions](/docs/api-reference/fine-tuning/completions-input) models.  The Batch API only supports &#x60;.jsonl&#x60; files up to 200 MB in size. The input also has a specific required [format](/docs/api-reference/batch/request-input).  Please [contact us](https://help.openai.com/) if you need to increase these storage limits. 
[**delete_file**](FilesApi.md#delete_file) | **DELETE** /files/{file_id} | Delete a file.
[**download_file**](FilesApi.md#download_file) | **GET** /files/{file_id}/content | Returns the contents of the specified file.
[**list_files**](FilesApi.md#list_files) | **GET** /files | Returns a list of files.
[**retrieve_file**](FilesApi.md#retrieve_file) | **GET** /files/{file_id} | Returns information about a specific file.

# **create_file**
> OpenAIFile create_file(filepurpose)

Upload a file that can be used across various endpoints. Individual files can be up to 512 MB, and the size of all files uploaded by one organization can be up to 100 GB.  The Assistants API supports files up to 2 million tokens and of specific file types. See the [Assistants Tools guide](/docs/assistants/tools) for details.  The Fine-tuning API only supports `.jsonl` files. The input also has certain required formats for fine-tuning [chat](/docs/api-reference/fine-tuning/chat-input) or [completions](/docs/api-reference/fine-tuning/completions-input) models.  The Batch API only supports `.jsonl` files up to 200 MB in size. The input also has a specific required [format](/docs/api-reference/batch/request-input).  Please [contact us](https://help.openai.com/) if you need to increase these storage limits. 

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::FilesApi.new
file = 'file_example' # String | 
purpose = 'purpose_example' # String | 


begin
  #Upload a file that can be used across various endpoints. Individual files can be up to 512 MB, and the size of all files uploaded by one organization can be up to 100 GB.  The Assistants API supports files up to 2 million tokens and of specific file types. See the [Assistants Tools guide](/docs/assistants/tools) for details.  The Fine-tuning API only supports `.jsonl` files. The input also has certain required formats for fine-tuning [chat](/docs/api-reference/fine-tuning/chat-input) or [completions](/docs/api-reference/fine-tuning/completions-input) models.  The Batch API only supports `.jsonl` files up to 200 MB in size. The input also has a specific required [format](/docs/api-reference/batch/request-input).  Please [contact us](https://help.openai.com/) if you need to increase these storage limits. 
  result = api_instance.create_file(filepurpose)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling FilesApi->create_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **String**|  | 
 **purpose** | **String**|  | 

### Return type

[**OpenAIFile**](OpenAIFile.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **delete_file**
> DeleteFileResponse delete_file(file_id)

Delete a file.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::FilesApi.new
file_id = 'file_id_example' # String | The ID of the file to use for this request.


begin
  #Delete a file.
  result = api_instance.delete_file(file_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling FilesApi->delete_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_id** | **String**| The ID of the file to use for this request. | 

### Return type

[**DeleteFileResponse**](DeleteFileResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **download_file**
> String download_file(file_id)

Returns the contents of the specified file.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::FilesApi.new
file_id = 'file_id_example' # String | The ID of the file to use for this request.


begin
  #Returns the contents of the specified file.
  result = api_instance.download_file(file_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling FilesApi->download_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_id** | **String**| The ID of the file to use for this request. | 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_files**
> ListFilesResponse list_files(opts)

Returns a list of files.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::FilesApi.new
opts = { 
  purpose: 'purpose_example', # String | Only return files with the given purpose.
  limit: 10000, # Integer | A limit on the number of objects to be returned. Limit can range between 1 and 10,000, and the default is 10,000. 
  order: 'desc', # String | Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order. 
  after: 'after_example' # String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
}

begin
  #Returns a list of files.
  result = api_instance.list_files(opts)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling FilesApi->list_files: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purpose** | **String**| Only return files with the given purpose. | [optional] 
 **limit** | **Integer**| A limit on the number of objects to be returned. Limit can range between 1 and 10,000, and the default is 10,000.  | [optional] [default to 10000]
 **order** | **String**| Sort order by the &#x60;created_at&#x60; timestamp of the objects. &#x60;asc&#x60; for ascending order and &#x60;desc&#x60; for descending order.  | [optional] [default to desc]
 **after** | **String**| A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list.  | [optional] 

### Return type

[**ListFilesResponse**](ListFilesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **retrieve_file**
> OpenAIFile retrieve_file(file_id)

Returns information about a specific file.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::FilesApi.new
file_id = 'file_id_example' # String | The ID of the file to use for this request.


begin
  #Returns information about a specific file.
  result = api_instance.retrieve_file(file_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling FilesApi->retrieve_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_id** | **String**| The ID of the file to use for this request. | 

### Return type

[**OpenAIFile**](OpenAIFile.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



