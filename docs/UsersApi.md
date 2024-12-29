# OpenAIClient::UsersApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_user**](UsersApi.md#delete_user) | **DELETE** /organization/users/{user_id} | Deletes a user from the organization.
[**list_users**](UsersApi.md#list_users) | **GET** /organization/users | Lists all of the users in the organization.
[**modify_user**](UsersApi.md#modify_user) | **POST** /organization/users/{user_id} | Modifies a user&#x27;s role in the organization.
[**retrieve_user**](UsersApi.md#retrieve_user) | **GET** /organization/users/{user_id} | Retrieves a user by their identifier.

# **delete_user**
> UserDeleteResponse delete_user(user_id)

Deletes a user from the organization.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user.


begin
  #Deletes a user from the organization.
  result = api_instance.delete_user(user_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling UsersApi->delete_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The ID of the user. | 

### Return type

[**UserDeleteResponse**](UserDeleteResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_users**
> UserListResponse list_users(opts)

Lists all of the users in the organization.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::UsersApi.new
opts = { 
  limit: 20, # Integer | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
  after: 'after_example' # String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
}

begin
  #Lists all of the users in the organization.
  result = api_instance.list_users(opts)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling UsersApi->list_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional] [default to 20]
 **after** | **String**| A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list.  | [optional] 

### Return type

[**UserListResponse**](UserListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **modify_user**
> User modify_user(bodyuser_id)

Modifies a user's role in the organization.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::UsersApi.new
body = OpenAIClient::UserRoleUpdateRequest.new # UserRoleUpdateRequest | The new user role to modify. This must be one of `owner` or `member`.
user_id = 'user_id_example' # String | The ID of the user.


begin
  #Modifies a user's role in the organization.
  result = api_instance.modify_user(bodyuser_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling UsersApi->modify_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserRoleUpdateRequest**](UserRoleUpdateRequest.md)| The new user role to modify. This must be one of &#x60;owner&#x60; or &#x60;member&#x60;. | 
 **user_id** | **String**| The ID of the user. | 

### Return type

[**User**](User.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_user**
> User retrieve_user(user_id)

Retrieves a user by their identifier.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user.


begin
  #Retrieves a user by their identifier.
  result = api_instance.retrieve_user(user_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling UsersApi->retrieve_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The ID of the user. | 

### Return type

[**User**](User.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



