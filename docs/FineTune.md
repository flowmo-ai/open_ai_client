# OpenAIClient::FineTune

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The object identifier, which can be referenced in the API endpoints. | 
**created_at** | **Integer** | The Unix timestamp (in seconds) for when the fine-tuning job was created. | 
**events** | [**Array&lt;FineTuneEvent&gt;**](FineTuneEvent.md) | The list of events that have been observed in the lifecycle of the FineTune job. | [optional] 
**fine_tuned_model** | **String** | The name of the fine-tuned model that is being created. | 
**hyperparams** | [**FineTuneHyperparams**](FineTuneHyperparams.md) |  | 
**model** | **String** | The base model that is being fine-tuned. | 
**object** | **String** | The object type, which is always \&quot;fine-tune\&quot;. | 
**organization_id** | **String** | The organization that owns the fine-tuning job. | 
**result_files** | [**Array&lt;OpenAIFile&gt;**](OpenAIFile.md) | The compiled results files for the fine-tuning job. | 
**status** | **String** | The current status of the fine-tuning job, which can be either &#x60;created&#x60;, &#x60;running&#x60;, &#x60;succeeded&#x60;, &#x60;failed&#x60;, or &#x60;cancelled&#x60;. | 
**training_files** | [**Array&lt;OpenAIFile&gt;**](OpenAIFile.md) | The list of files used for training. | 
**updated_at** | **Integer** | The Unix timestamp (in seconds) for when the fine-tuning job was last updated. | 
**validation_files** | [**Array&lt;OpenAIFile&gt;**](OpenAIFile.md) | The list of files used for validation. | 

