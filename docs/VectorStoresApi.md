# OpenAIClient::VectorStoresApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_vector_store_file_batch**](VectorStoresApi.md#cancel_vector_store_file_batch) | **POST** /vector_stores/{vector_store_id}/file_batches/{batch_id}/cancel | Cancel a vector store file batch. This attempts to cancel the processing of files in this batch as soon as possible.
[**create_vector_store**](VectorStoresApi.md#create_vector_store) | **POST** /vector_stores | Create a vector store.
[**create_vector_store_file**](VectorStoresApi.md#create_vector_store_file) | **POST** /vector_stores/{vector_store_id}/files | Create a vector store file by attaching a [File](/docs/api-reference/files) to a [vector store](/docs/api-reference/vector-stores/object).
[**create_vector_store_file_batch**](VectorStoresApi.md#create_vector_store_file_batch) | **POST** /vector_stores/{vector_store_id}/file_batches | Create a vector store file batch.
[**delete_vector_store**](VectorStoresApi.md#delete_vector_store) | **DELETE** /vector_stores/{vector_store_id} | Delete a vector store.
[**delete_vector_store_file**](VectorStoresApi.md#delete_vector_store_file) | **DELETE** /vector_stores/{vector_store_id}/files/{file_id} | Delete a vector store file. This will remove the file from the vector store but the file itself will not be deleted. To delete the file, use the [delete file](/docs/api-reference/files/delete) endpoint.
[**get_vector_store**](VectorStoresApi.md#get_vector_store) | **GET** /vector_stores/{vector_store_id} | Retrieves a vector store.
[**get_vector_store_file**](VectorStoresApi.md#get_vector_store_file) | **GET** /vector_stores/{vector_store_id}/files/{file_id} | Retrieves a vector store file.
[**get_vector_store_file_batch**](VectorStoresApi.md#get_vector_store_file_batch) | **GET** /vector_stores/{vector_store_id}/file_batches/{batch_id} | Retrieves a vector store file batch.
[**list_files_in_vector_store_batch**](VectorStoresApi.md#list_files_in_vector_store_batch) | **GET** /vector_stores/{vector_store_id}/file_batches/{batch_id}/files | Returns a list of vector store files in a batch.
[**list_vector_store_files**](VectorStoresApi.md#list_vector_store_files) | **GET** /vector_stores/{vector_store_id}/files | Returns a list of vector store files.
[**list_vector_stores**](VectorStoresApi.md#list_vector_stores) | **GET** /vector_stores | Returns a list of vector stores.
[**modify_vector_store**](VectorStoresApi.md#modify_vector_store) | **POST** /vector_stores/{vector_store_id} | Modifies a vector store.

# **cancel_vector_store_file_batch**
> VectorStoreFileBatchObject cancel_vector_store_file_batch(vector_store_id, batch_id)

Cancel a vector store file batch. This attempts to cancel the processing of files in this batch as soon as possible.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::VectorStoresApi.new
vector_store_id = 'vector_store_id_example' # String | The ID of the vector store that the file batch belongs to.
batch_id = 'batch_id_example' # String | The ID of the file batch to cancel.


begin
  #Cancel a vector store file batch. This attempts to cancel the processing of files in this batch as soon as possible.
  result = api_instance.cancel_vector_store_file_batch(vector_store_id, batch_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling VectorStoresApi->cancel_vector_store_file_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vector_store_id** | **String**| The ID of the vector store that the file batch belongs to. | 
 **batch_id** | **String**| The ID of the file batch to cancel. | 

### Return type

[**VectorStoreFileBatchObject**](VectorStoreFileBatchObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_vector_store**
> VectorStoreObject create_vector_store(body)

Create a vector store.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::VectorStoresApi.new
body = OpenAIClient::CreateVectorStoreRequest.new # CreateVectorStoreRequest | 


begin
  #Create a vector store.
  result = api_instance.create_vector_store(body)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling VectorStoresApi->create_vector_store: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateVectorStoreRequest**](CreateVectorStoreRequest.md)|  | 

### Return type

[**VectorStoreObject**](VectorStoreObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_vector_store_file**
> VectorStoreFileObject create_vector_store_file(bodyvector_store_id)

Create a vector store file by attaching a [File](/docs/api-reference/files) to a [vector store](/docs/api-reference/vector-stores/object).

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::VectorStoresApi.new
body = OpenAIClient::CreateVectorStoreFileRequest.new # CreateVectorStoreFileRequest | 
vector_store_id = 'vector_store_id_example' # String | The ID of the vector store for which to create a File. 


begin
  #Create a vector store file by attaching a [File](/docs/api-reference/files) to a [vector store](/docs/api-reference/vector-stores/object).
  result = api_instance.create_vector_store_file(bodyvector_store_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling VectorStoresApi->create_vector_store_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateVectorStoreFileRequest**](CreateVectorStoreFileRequest.md)|  | 
 **vector_store_id** | **String**| The ID of the vector store for which to create a File.  | 

### Return type

[**VectorStoreFileObject**](VectorStoreFileObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_vector_store_file_batch**
> VectorStoreFileBatchObject create_vector_store_file_batch(bodyvector_store_id)

Create a vector store file batch.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::VectorStoresApi.new
body = OpenAIClient::CreateVectorStoreFileBatchRequest.new # CreateVectorStoreFileBatchRequest | 
vector_store_id = 'vector_store_id_example' # String | The ID of the vector store for which to create a File Batch. 


begin
  #Create a vector store file batch.
  result = api_instance.create_vector_store_file_batch(bodyvector_store_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling VectorStoresApi->create_vector_store_file_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateVectorStoreFileBatchRequest**](CreateVectorStoreFileBatchRequest.md)|  | 
 **vector_store_id** | **String**| The ID of the vector store for which to create a File Batch.  | 

### Return type

[**VectorStoreFileBatchObject**](VectorStoreFileBatchObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_vector_store**
> DeleteVectorStoreResponse delete_vector_store(vector_store_id)

Delete a vector store.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::VectorStoresApi.new
vector_store_id = 'vector_store_id_example' # String | The ID of the vector store to delete.


begin
  #Delete a vector store.
  result = api_instance.delete_vector_store(vector_store_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling VectorStoresApi->delete_vector_store: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vector_store_id** | **String**| The ID of the vector store to delete. | 

### Return type

[**DeleteVectorStoreResponse**](DeleteVectorStoreResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_vector_store_file**
> DeleteVectorStoreFileResponse delete_vector_store_file(vector_store_id, file_id)

Delete a vector store file. This will remove the file from the vector store but the file itself will not be deleted. To delete the file, use the [delete file](/docs/api-reference/files/delete) endpoint.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::VectorStoresApi.new
vector_store_id = 'vector_store_id_example' # String | The ID of the vector store that the file belongs to.
file_id = 'file_id_example' # String | The ID of the file to delete.


begin
  #Delete a vector store file. This will remove the file from the vector store but the file itself will not be deleted. To delete the file, use the [delete file](/docs/api-reference/files/delete) endpoint.
  result = api_instance.delete_vector_store_file(vector_store_id, file_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling VectorStoresApi->delete_vector_store_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vector_store_id** | **String**| The ID of the vector store that the file belongs to. | 
 **file_id** | **String**| The ID of the file to delete. | 

### Return type

[**DeleteVectorStoreFileResponse**](DeleteVectorStoreFileResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_vector_store**
> VectorStoreObject get_vector_store(vector_store_id)

Retrieves a vector store.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::VectorStoresApi.new
vector_store_id = 'vector_store_id_example' # String | The ID of the vector store to retrieve.


begin
  #Retrieves a vector store.
  result = api_instance.get_vector_store(vector_store_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling VectorStoresApi->get_vector_store: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vector_store_id** | **String**| The ID of the vector store to retrieve. | 

### Return type

[**VectorStoreObject**](VectorStoreObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_vector_store_file**
> VectorStoreFileObject get_vector_store_file(vector_store_id, file_id)

Retrieves a vector store file.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::VectorStoresApi.new
vector_store_id = 'vector_store_id_example' # String | The ID of the vector store that the file belongs to.
file_id = 'file_id_example' # String | The ID of the file being retrieved.


begin
  #Retrieves a vector store file.
  result = api_instance.get_vector_store_file(vector_store_id, file_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling VectorStoresApi->get_vector_store_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vector_store_id** | **String**| The ID of the vector store that the file belongs to. | 
 **file_id** | **String**| The ID of the file being retrieved. | 

### Return type

[**VectorStoreFileObject**](VectorStoreFileObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_vector_store_file_batch**
> VectorStoreFileBatchObject get_vector_store_file_batch(vector_store_id, batch_id)

Retrieves a vector store file batch.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::VectorStoresApi.new
vector_store_id = 'vector_store_id_example' # String | The ID of the vector store that the file batch belongs to.
batch_id = 'batch_id_example' # String | The ID of the file batch being retrieved.


begin
  #Retrieves a vector store file batch.
  result = api_instance.get_vector_store_file_batch(vector_store_id, batch_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling VectorStoresApi->get_vector_store_file_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vector_store_id** | **String**| The ID of the vector store that the file batch belongs to. | 
 **batch_id** | **String**| The ID of the file batch being retrieved. | 

### Return type

[**VectorStoreFileBatchObject**](VectorStoreFileBatchObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_files_in_vector_store_batch**
> ListVectorStoreFilesResponse list_files_in_vector_store_batch(vector_store_id, batch_id, opts)

Returns a list of vector store files in a batch.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::VectorStoresApi.new
vector_store_id = 'vector_store_id_example' # String | The ID of the vector store that the files belong to.
batch_id = 'batch_id_example' # String | The ID of the file batch that the files belong to.
opts = { 
  limit: 20, # Integer | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
  order: 'desc', # String | Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order. 
  after: 'after_example', # String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
  before: 'before_example', # String | A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list. 
  filter: 'filter_example' # String | Filter by file status. One of `in_progress`, `completed`, `failed`, `cancelled`.
}

begin
  #Returns a list of vector store files in a batch.
  result = api_instance.list_files_in_vector_store_batch(vector_store_id, batch_id, opts)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling VectorStoresApi->list_files_in_vector_store_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vector_store_id** | **String**| The ID of the vector store that the files belong to. | 
 **batch_id** | **String**| The ID of the file batch that the files belong to. | 
 **limit** | **Integer**| A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional] [default to 20]
 **order** | **String**| Sort order by the &#x60;created_at&#x60; timestamp of the objects. &#x60;asc&#x60; for ascending order and &#x60;desc&#x60; for descending order.  | [optional] [default to desc]
 **after** | **String**| A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list.  | [optional] 
 **before** | **String**| A cursor for use in pagination. &#x60;before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with obj_foo, your subsequent call can include before&#x3D;obj_foo in order to fetch the previous page of the list.  | [optional] 
 **filter** | **String**| Filter by file status. One of &#x60;in_progress&#x60;, &#x60;completed&#x60;, &#x60;failed&#x60;, &#x60;cancelled&#x60;. | [optional] 

### Return type

[**ListVectorStoreFilesResponse**](ListVectorStoreFilesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_vector_store_files**
> ListVectorStoreFilesResponse list_vector_store_files(vector_store_id, opts)

Returns a list of vector store files.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::VectorStoresApi.new
vector_store_id = 'vector_store_id_example' # String | The ID of the vector store that the files belong to.
opts = { 
  limit: 20, # Integer | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
  order: 'desc', # String | Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order. 
  after: 'after_example', # String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
  before: 'before_example', # String | A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list. 
  filter: 'filter_example' # String | Filter by file status. One of `in_progress`, `completed`, `failed`, `cancelled`.
}

begin
  #Returns a list of vector store files.
  result = api_instance.list_vector_store_files(vector_store_id, opts)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling VectorStoresApi->list_vector_store_files: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vector_store_id** | **String**| The ID of the vector store that the files belong to. | 
 **limit** | **Integer**| A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional] [default to 20]
 **order** | **String**| Sort order by the &#x60;created_at&#x60; timestamp of the objects. &#x60;asc&#x60; for ascending order and &#x60;desc&#x60; for descending order.  | [optional] [default to desc]
 **after** | **String**| A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list.  | [optional] 
 **before** | **String**| A cursor for use in pagination. &#x60;before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with obj_foo, your subsequent call can include before&#x3D;obj_foo in order to fetch the previous page of the list.  | [optional] 
 **filter** | **String**| Filter by file status. One of &#x60;in_progress&#x60;, &#x60;completed&#x60;, &#x60;failed&#x60;, &#x60;cancelled&#x60;. | [optional] 

### Return type

[**ListVectorStoreFilesResponse**](ListVectorStoreFilesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_vector_stores**
> ListVectorStoresResponse list_vector_stores(opts)

Returns a list of vector stores.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::VectorStoresApi.new
opts = { 
  limit: 20, # Integer | A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20. 
  order: 'desc', # String | Sort order by the `created_at` timestamp of the objects. `asc` for ascending order and `desc` for descending order. 
  after: 'after_example', # String | A cursor for use in pagination. `after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list. 
  before: 'before_example' # String | A cursor for use in pagination. `before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list. 
}

begin
  #Returns a list of vector stores.
  result = api_instance.list_vector_stores(opts)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling VectorStoresApi->list_vector_stores: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.  | [optional] [default to 20]
 **order** | **String**| Sort order by the &#x60;created_at&#x60; timestamp of the objects. &#x60;asc&#x60; for ascending order and &#x60;desc&#x60; for descending order.  | [optional] [default to desc]
 **after** | **String**| A cursor for use in pagination. &#x60;after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after&#x3D;obj_foo in order to fetch the next page of the list.  | [optional] 
 **before** | **String**| A cursor for use in pagination. &#x60;before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with obj_foo, your subsequent call can include before&#x3D;obj_foo in order to fetch the previous page of the list.  | [optional] 

### Return type

[**ListVectorStoresResponse**](ListVectorStoresResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **modify_vector_store**
> VectorStoreObject modify_vector_store(bodyvector_store_id)

Modifies a vector store.

### Example
```ruby
# load the gem
require 'open_ai_client'
# setup authorization
OpenAIClient.configure do |config|
end

api_instance = OpenAIClient::VectorStoresApi.new
body = OpenAIClient::UpdateVectorStoreRequest.new # UpdateVectorStoreRequest | 
vector_store_id = 'vector_store_id_example' # String | The ID of the vector store to modify.


begin
  #Modifies a vector store.
  result = api_instance.modify_vector_store(bodyvector_store_id)
  p result
rescue OpenAIClient::ApiError => e
  puts "Exception when calling VectorStoresApi->modify_vector_store: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateVectorStoreRequest**](UpdateVectorStoreRequest.md)|  | 
 **vector_store_id** | **String**| The ID of the vector store to modify. | 

### Return type

[**VectorStoreObject**](VectorStoreObject.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



