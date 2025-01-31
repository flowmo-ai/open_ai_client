# OpenAIClient::CreateAssistantRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**model** | [**AnyOfCreateAssistantRequestModel**](AnyOfCreateAssistantRequestModel.md) | ID of the model to use. You can use the [List models](/docs/api-reference/models/list) API to see all of your available models, or see our [Model overview](/docs/models) for descriptions of them.  | 
**name** | **String** | The name of the assistant. The maximum length is 256 characters.  | [optional] 
**description** | **String** | The description of the assistant. The maximum length is 512 characters.  | [optional] 
**instructions** | **String** | The system instructions that the assistant uses. The maximum length is 256,000 characters.  | [optional] 
**tools** | [**Array&lt;OneOfCreateAssistantRequestToolsItems&gt;**](.md) | A list of tool enabled on the assistant. There can be a maximum of 128 tools per assistant. Tools can be of types &#x60;code_interpreter&#x60;, &#x60;file_search&#x60;, or &#x60;function&#x60;.  | [optional] 
**tool_resources** | [**CreateAssistantRequestToolResources**](CreateAssistantRequestToolResources.md) |  | [optional] 
**metadata** | [**Metadata**](Metadata.md) |  | [optional] 
**temperature** | [**BigDecimal**](BigDecimal.md) | What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic.  | [optional] [default to 1]
**top_p** | [**BigDecimal**](BigDecimal.md) | An alternative to sampling with temperature, called nucleus sampling, where the model considers the results of the tokens with top_p probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered.  We generally recommend altering this or temperature but not both.  | [optional] [default to 1]
**response_format** | [**AllOfCreateAssistantRequestResponseFormat**](AllOfCreateAssistantRequestResponseFormat.md) |  | [optional] 

