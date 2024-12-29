# OpenAIClient::InvitesApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_invite**](InvitesApi.md#delete_invite) | **DELETE** /organization/invites/{invite_id} | Delete an invite. If the invite has already been accepted, it cannot be deleted.
[**invite_user**](InvitesApi.md#invite_user) | **POST** /organization/invites | Create an invite for a user to the organization. The invite must be accepted by the user before they have access to the organization.
[**list_invites**](InvitesApi.md#list_invites) | **GET** /organization/invites | Returns a list of invites in the organization.
[**retrieve_invite**](InvitesApi.md#retrieve_invite) | **GET** /organization/invites/{invite_id} | Retrieves an invite.

# **delete_invite**
> InviteDeleteResponse delete_invite(invite_id)

Delete an invite. If the invite has already been accepted, it cannot be deleted.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::InvitesApi.new
invite_id = 'invite_id_example' # String | The ID of the invite to delete.


begin
  #Delete an invite. If the invite has already been accepted, it cannot be deleted.
  result = api_instance.delete_invite(invite_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling InvitesApi->delete_invite: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invite_id** | **String**| The ID of the invite to delete. | 

### Return type

[**InviteDeleteResponse**](InviteDeleteResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **invite_user**
> Invite invite_user(body)

Create an invite for a user to the organization. The invite must be accepted by the user before they have access to the organization.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::InvitesApi.new
body = OpenAIClient::InviteRequest.new # InviteRequest | The invite request payload.


begin
  #Create an invite for a user to the organization. The invite must be accepted by the user before they have access to the organization.
  result = api_instance.invite_user(body)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling InvitesApi->invite_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InviteRequest**](InviteRequest.md)| The invite request payload. | 

### Return type

[**Invite**](Invite.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_invites**
> InviteListResponse list_invites(opts)

Returns a list of invites in the organization.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::InvitesApi.new
opts = { 
  limit: 20, # Integer | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
  after: 'after_example' # String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
}

begin
  #Returns a list of invites in the organization.
  result = api_instance.list_invites(opts)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling InvitesApi->list_invites: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional] [default to 20]
 **after** | **String**| A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list.  | [optional] 

### Return type

[**InviteListResponse**](InviteListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **retrieve_invite**
> Invite retrieve_invite(invite_id)

Retrieves an invite.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::InvitesApi.new
invite_id = 'invite_id_example' # String | The ID of the invite to retrieve.


begin
  #Retrieves an invite.
  result = api_instance.retrieve_invite(invite_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling InvitesApi->retrieve_invite: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invite_id** | **String**| The ID of the invite to retrieve. | 

### Return type

[**Invite**](Invite.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



