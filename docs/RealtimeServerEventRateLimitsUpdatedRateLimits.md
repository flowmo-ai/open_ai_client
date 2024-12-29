# OpenAIClient::RealtimeServerEventRateLimitsUpdatedRateLimits

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the rate limit (&#x60;requests&#x60;, &#x60;tokens&#x60;).  | [optional] 
**limit** | **Integer** | The maximum allowed value for the rate limit. | [optional] 
**remaining** | **Integer** | The remaining value before the limit is reached. | [optional] 
**reset_seconds** | [**BigDecimal**](BigDecimal.md) | Seconds until the rate limit resets. | [optional] 

