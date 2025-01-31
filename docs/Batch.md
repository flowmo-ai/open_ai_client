# OpenAIClient::Batch

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**object** | **String** | The object type, which is always &#x60;batch&#x60;. | 
**endpoint** | **String** | The OpenAI API endpoint used by the batch. | 
**errors** | [**BatchErrors**](BatchErrors.md) |  | [optional] 
**input_file_id** | **String** | The ID of the input file for the batch. | 
**completion_window** | **String** | The time frame within which the batch should be processed. | 
**status** | **String** | The current status of the batch. | 
**output_file_id** | **String** | The ID of the file containing the outputs of successfully executed requests. | [optional] 
**error_file_id** | **String** | The ID of the file containing the outputs of requests with errors. | [optional] 
**created_at** | **Integer** | The Unix timestamp (in seconds) for when the batch was created. | 
**in_progress_at** | **Integer** | The Unix timestamp (in seconds) for when the batch started processing. | [optional] 
**expires_at** | **Integer** | The Unix timestamp (in seconds) for when the batch will expire. | [optional] 
**finalizing_at** | **Integer** | The Unix timestamp (in seconds) for when the batch started finalizing. | [optional] 
**completed_at** | **Integer** | The Unix timestamp (in seconds) for when the batch was completed. | [optional] 
**failed_at** | **Integer** | The Unix timestamp (in seconds) for when the batch failed. | [optional] 
**expired_at** | **Integer** | The Unix timestamp (in seconds) for when the batch expired. | [optional] 
**cancelling_at** | **Integer** | The Unix timestamp (in seconds) for when the batch started cancelling. | [optional] 
**cancelled_at** | **Integer** | The Unix timestamp (in seconds) for when the batch was cancelled. | [optional] 
**request_counts** | [**BatchRequestCounts**](BatchRequestCounts.md) |  | [optional] 
**metadata** | [**Metadata**](Metadata.md) |  | [optional] 

