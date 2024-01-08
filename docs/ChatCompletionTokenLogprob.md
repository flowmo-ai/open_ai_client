# OpenAIClient::ChatCompletionTokenLogprob

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token** | **String** | The token. | 
**logprob** | [**BigDecimal**](BigDecimal.md) | The log probability of this token. | 
**bytes** | **Array&lt;Integer&gt;** | A list of integers representing the UTF-8 bytes representation of the token. Useful in instances where characters are represented by multiple tokens and their byte representations must be combined to generate the correct text representation. Can be &#x60;null&#x60; if there is no bytes representation for the token. | 
**top_logprobs** | [**Array&lt;ChatCompletionTokenLogprobTopLogprobs&gt;**](ChatCompletionTokenLogprobTopLogprobs.md) | List of the most likely tokens and their log probability, at this token position. In rare cases, there may be fewer than the number of requested &#x60;top_logprobs&#x60; returned. | 

