# OpenAIClient::CreateAssistantRequestToolResourcesFileSearchVectorStores

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_ids** | **Array&lt;String&gt;** | A list of [file](/docs/api-reference/files) IDs to add to the vector store. There can be a maximum of 10000 files in a vector store.  | [optional] 
**chunking_strategy** | **OneOfCreateAssistantRequestToolResourcesFileSearchVectorStoresChunkingStrategy** | The chunking strategy used to chunk the file(s). If not set, will use the &#x60;auto&#x60; strategy. | [optional] 
**metadata** | **Object** | Set of 16 key-value pairs that can be attached to a vector store. This can be useful for storing additional information about the vector store in a structured format. Keys can be a maximum of 64 characters long and values can be a maximum of 512 characters long.  | [optional] 

