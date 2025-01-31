# OpenAIClient::VectorStoreObject

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The identifier, which can be referenced in API endpoints. | 
**object** | **String** | The object type, which is always &#x60;vector_store&#x60;. | 
**created_at** | **Integer** | The Unix timestamp (in seconds) for when the vector store was created. | 
**name** | **String** | The name of the vector store. | 
**usage_bytes** | **Integer** | The total number of bytes used by the files in the vector store. | 
**file_counts** | [**VectorStoreObjectFileCounts**](VectorStoreObjectFileCounts.md) |  | 
**status** | **String** | The status of the vector store, which can be either &#x60;expired&#x60;, &#x60;in_progress&#x60;, or &#x60;completed&#x60;. A status of &#x60;completed&#x60; indicates that the vector store is ready for use. | 
**expires_after** | [**VectorStoreExpirationAfter**](VectorStoreExpirationAfter.md) |  | [optional] 
**expires_at** | **Integer** | The Unix timestamp (in seconds) for when the vector store will expire. | [optional] 
**last_active_at** | **Integer** | The Unix timestamp (in seconds) for when the vector store was last active. | 
**metadata** | [**Metadata**](Metadata.md) |  | 

