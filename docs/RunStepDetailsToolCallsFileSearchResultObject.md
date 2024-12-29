# OpenAIClient::RunStepDetailsToolCallsFileSearchResultObject

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_id** | **String** | The ID of the file that result was found in. | 
**file_name** | **String** | The name of the file that result was found in. | 
**score** | [**BigDecimal**](BigDecimal.md) | The score of the result. All values must be a floating point number between 0 and 1. | 
**content** | [**Array&lt;RunStepDetailsToolCallsFileSearchResultObjectContent&gt;**](RunStepDetailsToolCallsFileSearchResultObjectContent.md) | The content of the result that was found. The content is only included if requested via the include query parameter. | [optional] 

