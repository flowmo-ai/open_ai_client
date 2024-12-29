# OpenAIClient::DefaultApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_api_keys_create**](DefaultApi.md#admin_api_keys_create) | **POST** /organization/admin_api_keys | Create an organization admin API key
[**admin_api_keys_delete**](DefaultApi.md#admin_api_keys_delete) | **DELETE** /organization/admin_api_keys/{key_id} | Delete an organization admin API key
[**admin_api_keys_get**](DefaultApi.md#admin_api_keys_get) | **GET** /organization/admin_api_keys/{key_id} | Retrieve a single organization API key
[**admin_api_keys_list**](DefaultApi.md#admin_api_keys_list) | **GET** /organization/admin_api_keys | List organization API keys

# **admin_api_keys_create**
> AdminApiKey admin_api_keys_create(body)

Create an organization admin API key

Create a new admin-level API key for the organization.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::DefaultApi.new
body = OpenAIClient::OrganizationAdminApiKeysBody.new # OrganizationAdminApiKeysBody | 


begin
  #Create an organization admin API key
  result = api_instance.admin_api_keys_create(body)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling DefaultApi->admin_api_keys_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OrganizationAdminApiKeysBody**](OrganizationAdminApiKeysBody.md)|  | 

### Return type

[**AdminApiKey**](AdminApiKey.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **admin_api_keys_delete**
> InlineResponse2002 admin_api_keys_delete(key_id)

Delete an organization admin API key

Delete the specified admin API key.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::DefaultApi.new
key_id = 'key_id_example' # String | 


begin
  #Delete an organization admin API key
  result = api_instance.admin_api_keys_delete(key_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling DefaultApi->admin_api_keys_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key_id** | **String**|  | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **admin_api_keys_get**
> AdminApiKey admin_api_keys_get(key_id)

Retrieve a single organization API key

Get details for a specific organization API key by its ID.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::DefaultApi.new
key_id = 'key_id_example' # String | 


begin
  #Retrieve a single organization API key
  result = api_instance.admin_api_keys_get(key_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling DefaultApi->admin_api_keys_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key_id** | **String**|  | 

### Return type

[**AdminApiKey**](AdminApiKey.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **admin_api_keys_list**
> ApiKeyList admin_api_keys_list(opts)

List organization API keys

Retrieve a paginated list of organization admin API keys.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::DefaultApi.new
opts = { 
  after: 'after_example', # String | 
  order: 'asc', # String | 
  limit: 20 # Integer | 
}

begin
  #List organization API keys
  result = api_instance.admin_api_keys_list(opts)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling DefaultApi->admin_api_keys_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **String**|  | [optional] 
 **order** | **String**|  | [optional] [default to asc]
 **limit** | **Integer**|  | [optional] [default to 20]

### Return type

[**ApiKeyList**](ApiKeyList.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



