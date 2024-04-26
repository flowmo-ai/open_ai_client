# OpenAIClient::AssistantsApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_run**](AssistantsApi.md#cancel_run) | **POST** /threads/{thread_id}/runs/{run_id}/cancel | Cancels a run that is &#x60;in_progress&#x60;.
[**create_assistant**](AssistantsApi.md#create_assistant) | **POST** /assistants | Create an assistant with a model and instructions.
[**create_message**](AssistantsApi.md#create_message) | **POST** /threads/{thread_id}/messages | Create a message.
[**create_run**](AssistantsApi.md#create_run) | **POST** /threads/{thread_id}/runs | Create a run.
[**create_thread**](AssistantsApi.md#create_thread) | **POST** /threads | Create a thread.
[**create_thread_and_run**](AssistantsApi.md#create_thread_and_run) | **POST** /threads/runs | Create a thread and run it in one request.
[**delete_assistant**](AssistantsApi.md#delete_assistant) | **DELETE** /assistants/{assistant_id} | Delete an assistant.
[**delete_thread**](AssistantsApi.md#delete_thread) | **DELETE** /threads/{thread_id} | Delete a thread.
[**get_assistant**](AssistantsApi.md#get_assistant) | **GET** /assistants/{assistant_id} | Retrieves an assistant.
[**get_message**](AssistantsApi.md#get_message) | **GET** /threads/{thread_id}/messages/{message_id} | Retrieve a message.
[**get_run**](AssistantsApi.md#get_run) | **GET** /threads/{thread_id}/runs/{run_id} | Retrieves a run.
[**get_run_step**](AssistantsApi.md#get_run_step) | **GET** /threads/{thread_id}/runs/{run_id}/steps/{step_id} | Retrieves a run step.
[**get_thread**](AssistantsApi.md#get_thread) | **GET** /threads/{thread_id} | Retrieves a thread.
[**list_assistants**](AssistantsApi.md#list_assistants) | **GET** /assistants | Returns a list of assistants.
[**list_messages**](AssistantsApi.md#list_messages) | **GET** /threads/{thread_id}/messages | Returns a list of messages for a given thread.
[**list_run_steps**](AssistantsApi.md#list_run_steps) | **GET** /threads/{thread_id}/runs/{run_id}/steps | Returns a list of run steps belonging to a run.
[**list_runs**](AssistantsApi.md#list_runs) | **GET** /threads/{thread_id}/runs | Returns a list of runs belonging to a thread.
[**modify_assistant**](AssistantsApi.md#modify_assistant) | **POST** /assistants/{assistant_id} | Modifies an assistant.
[**modify_message**](AssistantsApi.md#modify_message) | **POST** /threads/{thread_id}/messages/{message_id} | Modifies a message.
[**modify_run**](AssistantsApi.md#modify_run) | **POST** /threads/{thread_id}/runs/{run_id} | Modifies a run.
[**modify_thread**](AssistantsApi.md#modify_thread) | **POST** /threads/{thread_id} | Modifies a thread.
[**submit_tool_ouputs_to_run**](AssistantsApi.md#submit_tool_ouputs_to_run) | **POST** /threads/{thread_id}/runs/{run_id}/submit_tool_outputs | When a run has the &#x60;status: \&quot;requires_action\&quot;&#x60; and &#x60;required_action.type&#x60; is &#x60;submit_tool_outputs&#x60;, this endpoint can be used to submit the outputs from the tool calls once they&#x27;re all completed. All outputs must be submitted in a single request. 

# **cancel_run**
> RunObject cancel_run(thread_id, run_id)

Cancels a run that is `in_progress`.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the thread to which this run belongs.
run_id = 'run_id_example' # String | The ID of the run to cancel.


begin
  #Cancels a run that is `in_progress`.
  result = api_instance.cancel_run(thread_id, run_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->cancel_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thread_id** | **String**| The ID of the thread to which this run belongs. | 
 **run_id** | **String**| The ID of the run to cancel. | 

### Return type

[**RunObject**](RunObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_assistant**
> AssistantObject create_assistant(body)

Create an assistant with a model and instructions.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
body = OpenAIClient::CreateAssistantRequest.new # CreateAssistantRequest | 


begin
  #Create an assistant with a model and instructions.
  result = api_instance.create_assistant(body)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->create_assistant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateAssistantRequest**](CreateAssistantRequest.md)|  | 

### Return type

[**AssistantObject**](AssistantObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_message**
> MessageObject create_message(bodythread_id)

Create a message.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
body = OpenAIClient::CreateMessageRequest.new # CreateMessageRequest | 
thread_id = 'thread_id_example' # String | The ID of the [thread](/docs/api-reference/threads) to create a message for.


begin
  #Create a message.
  result = api_instance.create_message(bodythread_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->create_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateMessageRequest**](CreateMessageRequest.md)|  | 
 **thread_id** | **String**| The ID of the [thread](/docs/api-reference/threads) to create a message for. | 

### Return type

[**MessageObject**](MessageObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_run**
> RunObject create_run(bodythread_id)

Create a run.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
body = OpenAIClient::CreateRunRequest.new # CreateRunRequest | 
thread_id = 'thread_id_example' # String | The ID of the thread to run.


begin
  #Create a run.
  result = api_instance.create_run(bodythread_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->create_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateRunRequest**](CreateRunRequest.md)|  | 
 **thread_id** | **String**| The ID of the thread to run. | 

### Return type

[**RunObject**](RunObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_thread**
> ThreadObject create_thread(body)

Create a thread.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
body = OpenAIClient::CreateThreadRequest.new # CreateThreadRequest | 


begin
  #Create a thread.
  result = api_instance.create_thread(body)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->create_thread: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateThreadRequest**](CreateThreadRequest.md)|  | 

### Return type

[**ThreadObject**](ThreadObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_thread_and_run**
> RunObject create_thread_and_run(body)

Create a thread and run it in one request.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
body = OpenAIClient::CreateThreadAndRunRequest.new # CreateThreadAndRunRequest | 


begin
  #Create a thread and run it in one request.
  result = api_instance.create_thread_and_run(body)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->create_thread_and_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateThreadAndRunRequest**](CreateThreadAndRunRequest.md)|  | 

### Return type

[**RunObject**](RunObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_assistant**
> DeleteAssistantResponse delete_assistant(assistant_id)

Delete an assistant.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
assistant_id = 'assistant_id_example' # String | The ID of the assistant to delete.


begin
  #Delete an assistant.
  result = api_instance.delete_assistant(assistant_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->delete_assistant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assistant_id** | **String**| The ID of the assistant to delete. | 

### Return type

[**DeleteAssistantResponse**](DeleteAssistantResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_thread**
> DeleteThreadResponse delete_thread(thread_id)

Delete a thread.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the thread to delete.


begin
  #Delete a thread.
  result = api_instance.delete_thread(thread_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->delete_thread: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thread_id** | **String**| The ID of the thread to delete. | 

### Return type

[**DeleteThreadResponse**](DeleteThreadResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_assistant**
> AssistantObject get_assistant(assistant_id)

Retrieves an assistant.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
assistant_id = 'assistant_id_example' # String | The ID of the assistant to retrieve.


begin
  #Retrieves an assistant.
  result = api_instance.get_assistant(assistant_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->get_assistant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assistant_id** | **String**| The ID of the assistant to retrieve. | 

### Return type

[**AssistantObject**](AssistantObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_message**
> MessageObject get_message(thread_id, message_id)

Retrieve a message.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the [thread](/docs/api-reference/threads) to which this message belongs.
message_id = 'message_id_example' # String | The ID of the message to retrieve.


begin
  #Retrieve a message.
  result = api_instance.get_message(thread_id, message_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->get_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thread_id** | **String**| The ID of the [thread](/docs/api-reference/threads) to which this message belongs. | 
 **message_id** | **String**| The ID of the message to retrieve. | 

### Return type

[**MessageObject**](MessageObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_run**
> RunObject get_run(thread_id, run_id)

Retrieves a run.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the [thread](/docs/api-reference/threads) that was run.
run_id = 'run_id_example' # String | The ID of the run to retrieve.


begin
  #Retrieves a run.
  result = api_instance.get_run(thread_id, run_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->get_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thread_id** | **String**| The ID of the [thread](/docs/api-reference/threads) that was run. | 
 **run_id** | **String**| The ID of the run to retrieve. | 

### Return type

[**RunObject**](RunObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_run_step**
> RunStepObject get_run_step(thread_id, run_id, step_id)

Retrieves a run step.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the thread to which the run and run step belongs.
run_id = 'run_id_example' # String | The ID of the run to which the run step belongs.
step_id = 'step_id_example' # String | The ID of the run step to retrieve.


begin
  #Retrieves a run step.
  result = api_instance.get_run_step(thread_id, run_id, step_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->get_run_step: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thread_id** | **String**| The ID of the thread to which the run and run step belongs. | 
 **run_id** | **String**| The ID of the run to which the run step belongs. | 
 **step_id** | **String**| The ID of the run step to retrieve. | 

### Return type

[**RunStepObject**](RunStepObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_thread**
> ThreadObject get_thread(thread_id)

Retrieves a thread.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the thread to retrieve.


begin
  #Retrieves a thread.
  result = api_instance.get_thread(thread_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->get_thread: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thread_id** | **String**| The ID of the thread to retrieve. | 

### Return type

[**ThreadObject**](ThreadObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_assistants**
> ListAssistantsResponse list_assistants(opts)

Returns a list of assistants.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
opts = { 
  limit: 20, # Integer | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
  order: 'desc', # String | Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order. 
  after: 'after_example', # String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
  before: 'before_example' # String | A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list. 
}

begin
  #Returns a list of assistants.
  result = api_instance.list_assistants(opts)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->list_assistants: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional] [default to 20]
 **order** | **String**| Sort order by the &#x60;created_at&#x60; timestamp of the objects. &#x60;asc&#x60; for ascending order and &#x60;desc&#x60; for descending order.  | [optional] [default to desc]
 **after** | **String**| A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list.  | [optional] 
 **before** | **String**| A cursor for use in pagination. &#x60;before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before&#x3D;obj_foo in order to fetch the previous page of the list.  | [optional] 

### Return type

[**ListAssistantsResponse**](ListAssistantsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_messages**
> ListMessagesResponse list_messages(thread_id, opts)

Returns a list of messages for a given thread.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the [thread](/docs/api-reference/threads) the messages belong to.
opts = { 
  limit: 20, # Integer | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
  order: 'desc', # String | Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order. 
  after: 'after_example', # String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
  before: 'before_example', # String | A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list. 
  run_id: 'run_id_example' # String | Filter messages by the run ID that generated them. 
}

begin
  #Returns a list of messages for a given thread.
  result = api_instance.list_messages(thread_id, opts)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->list_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thread_id** | **String**| The ID of the [thread](/docs/api-reference/threads) the messages belong to. | 
 **limit** | **Integer**| A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional] [default to 20]
 **order** | **String**| Sort order by the &#x60;created_at&#x60; timestamp of the objects. &#x60;asc&#x60; for ascending order and &#x60;desc&#x60; for descending order.  | [optional] [default to desc]
 **after** | **String**| A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list.  | [optional] 
 **before** | **String**| A cursor for use in pagination. &#x60;before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before&#x3D;obj_foo in order to fetch the previous page of the list.  | [optional] 
 **run_id** | **String**| Filter messages by the run ID that generated them.  | [optional] 

### Return type

[**ListMessagesResponse**](ListMessagesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_run_steps**
> ListRunStepsResponse list_run_steps(thread_id, run_id, opts)

Returns a list of run steps belonging to a run.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the thread the run and run steps belong to.
run_id = 'run_id_example' # String | The ID of the run the run steps belong to.
opts = { 
  limit: 20, # Integer | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
  order: 'desc', # String | Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order. 
  after: 'after_example', # String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
  before: 'before_example' # String | A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list. 
}

begin
  #Returns a list of run steps belonging to a run.
  result = api_instance.list_run_steps(thread_id, run_id, opts)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->list_run_steps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thread_id** | **String**| The ID of the thread the run and run steps belong to. | 
 **run_id** | **String**| The ID of the run the run steps belong to. | 
 **limit** | **Integer**| A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional] [default to 20]
 **order** | **String**| Sort order by the &#x60;created_at&#x60; timestamp of the objects. &#x60;asc&#x60; for ascending order and &#x60;desc&#x60; for descending order.  | [optional] [default to desc]
 **after** | **String**| A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list.  | [optional] 
 **before** | **String**| A cursor for use in pagination. &#x60;before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before&#x3D;obj_foo in order to fetch the previous page of the list.  | [optional] 

### Return type

[**ListRunStepsResponse**](ListRunStepsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_runs**
> ListRunsResponse list_runs(thread_id, opts)

Returns a list of runs belonging to a thread.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
thread_id = 'thread_id_example' # String | The ID of the thread the run belongs to.
opts = { 
  limit: 20, # Integer | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
  order: 'desc', # String | Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order. 
  after: 'after_example', # String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
  before: 'before_example' # String | A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list. 
}

begin
  #Returns a list of runs belonging to a thread.
  result = api_instance.list_runs(thread_id, opts)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->list_runs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thread_id** | **String**| The ID of the thread the run belongs to. | 
 **limit** | **Integer**| A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional] [default to 20]
 **order** | **String**| Sort order by the &#x60;created_at&#x60; timestamp of the objects. &#x60;asc&#x60; for ascending order and &#x60;desc&#x60; for descending order.  | [optional] [default to desc]
 **after** | **String**| A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list.  | [optional] 
 **before** | **String**| A cursor for use in pagination. &#x60;before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before&#x3D;obj_foo in order to fetch the previous page of the list.  | [optional] 

### Return type

[**ListRunsResponse**](ListRunsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



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

api_instance = OpenAIClient::AssistantsApi.new
body = OpenAIClient::ModifyAssistantRequest.new # ModifyAssistantRequest | 
assistant_id = 'assistant_id_example' # String | The ID of the assistant to modify.


begin
  #Modifies an assistant.
  result = api_instance.modify_assistant(bodyassistant_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->modify_assistant: #{e}"
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



# **modify_message**
> MessageObject modify_message(bodythread_idmessage_id)

Modifies a message.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
body = OpenAIClient::ModifyMessageRequest.new # ModifyMessageRequest | 
thread_id = 'thread_id_example' # String | The ID of the thread to which this message belongs.
message_id = 'message_id_example' # String | The ID of the message to modify.


begin
  #Modifies a message.
  result = api_instance.modify_message(bodythread_idmessage_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->modify_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ModifyMessageRequest**](ModifyMessageRequest.md)|  | 
 **thread_id** | **String**| The ID of the thread to which this message belongs. | 
 **message_id** | **String**| The ID of the message to modify. | 

### Return type

[**MessageObject**](MessageObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_run**
> RunObject modify_run(bodythread_idrun_id)

Modifies a run.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
body = OpenAIClient::ModifyRunRequest.new # ModifyRunRequest | 
thread_id = 'thread_id_example' # String | The ID of the [thread](/docs/api-reference/threads) that was run.
run_id = 'run_id_example' # String | The ID of the run to modify.


begin
  #Modifies a run.
  result = api_instance.modify_run(bodythread_idrun_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->modify_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ModifyRunRequest**](ModifyRunRequest.md)|  | 
 **thread_id** | **String**| The ID of the [thread](/docs/api-reference/threads) that was run. | 
 **run_id** | **String**| The ID of the run to modify. | 

### Return type

[**RunObject**](RunObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_thread**
> ThreadObject modify_thread(bodythread_id)

Modifies a thread.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
body = OpenAIClient::ModifyThreadRequest.new # ModifyThreadRequest | 
thread_id = 'thread_id_example' # String | The ID of the thread to modify. Only the `metadata` can be modified.


begin
  #Modifies a thread.
  result = api_instance.modify_thread(bodythread_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->modify_thread: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ModifyThreadRequest**](ModifyThreadRequest.md)|  | 
 **thread_id** | **String**| The ID of the thread to modify. Only the &#x60;metadata&#x60; can be modified. | 

### Return type

[**ThreadObject**](ThreadObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **submit_tool_ouputs_to_run**
> RunObject submit_tool_ouputs_to_run(bodythread_idrun_id)

When a run has the `status: \"requires_action\"` and `required_action.type` is `submit_tool_outputs`, this endpoint can be used to submit the outputs from the tool calls once they're all completed. All outputs must be submitted in a single request. 

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::AssistantsApi.new
body = OpenAIClient::SubmitToolOutputsRunRequest.new # SubmitToolOutputsRunRequest | 
thread_id = 'thread_id_example' # String | The ID of the [thread](/docs/api-reference/threads) to which this run belongs.
run_id = 'run_id_example' # String | The ID of the run that requires the tool output submission.


begin
  #When a run has the `status: \"requires_action\"` and `required_action.type` is `submit_tool_outputs`, this endpoint can be used to submit the outputs from the tool calls once they're all completed. All outputs must be submitted in a single request. 
  result = api_instance.submit_tool_ouputs_to_run(bodythread_idrun_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling AssistantsApi->submit_tool_ouputs_to_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubmitToolOutputsRunRequest**](SubmitToolOutputsRunRequest.md)|  | 
 **thread_id** | **String**| The ID of the [thread](/docs/api-reference/threads) to which this run belongs. | 
 **run_id** | **String**| The ID of the run that requires the tool output submission. | 

### Return type

[**RunObject**](RunObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



