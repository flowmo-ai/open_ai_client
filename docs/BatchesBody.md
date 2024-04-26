# OpenAIClient::BatchesBody

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**input_file_id** | **String** | The ID of an uploaded file that contains requests for the new batch.  See [upload file](/docs/api-reference/files/create) for how to upload a file.  Your input file must be formatted as a [JSONL file](/docs/api-reference/batch/requestInput), and must be uploaded with the purpose &#x60;batch&#x60;.  | 
**endpoint** | **String** | The endpoint to be used for all requests in the batch. Currently only &#x60;/v1/chat/completions&#x60; is supported. | 
**completion_window** | **String** | The time frame within which the batch should be processed. Currently only &#x60;24h&#x60; is supported. | 
**metadata** | **Hash&lt;String, String&gt;** | Optional custom metadata for the batch. | [optional] 

