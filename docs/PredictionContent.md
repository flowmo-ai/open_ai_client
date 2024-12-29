# OpenAIClient::PredictionContent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of the predicted content you want to provide. This type is currently always &#x60;content&#x60;.  | 
**content** | [**OneOfPredictionContentContent**](OneOfPredictionContentContent.md) | The content that should be matched when generating a model response. If generated tokens would match this content, the entire model response can be returned much more quickly.  | 

