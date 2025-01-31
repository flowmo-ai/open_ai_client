# OpenAIClient::CreateVectorStoreRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_ids** | **Array&lt;String&gt;** | A list of [File](/docs/api-reference/files) IDs that the vector store should use. Useful for tools like &#x60;file_search&#x60; that can access files. | [optional] 
**name** | **String** | The name of the vector store. | [optional] 
**expires_after** | [**VectorStoreExpirationAfter**](VectorStoreExpirationAfter.md) |  | [optional] 
**chunking_strategy** | **OneOfCreateVectorStoreRequestChunkingStrategy** | The chunking strategy used to chunk the file(s). If not set, will use the &#x60;auto&#x60; strategy. Only applicable if &#x60;file_ids&#x60; is non-empty. | [optional] 
**metadata** | [**Metadata**](Metadata.md) |  | [optional] 

