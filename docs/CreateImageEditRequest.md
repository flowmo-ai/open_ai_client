# OpenAIClient::CreateImageEditRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**image** | **String** | The image to edit. Must be a valid PNG file, less than 4MB, and square. If mask is not provided, image must have transparency, which will be used as the mask. | 
**prompt** | **String** | A text description of the desired image(s). The maximum length is 1000 characters. | 
**mask** | **String** | An additional image whose fully transparent areas (e.g. where alpha is zero) indicate where &#x60;image&#x60; should be edited. Must be a valid PNG file, less than 4MB, and have the same dimensions as &#x60;image&#x60;. | [optional] 
**model** | [**AnyOfCreateImageEditRequestModel**](AnyOfCreateImageEditRequestModel.md) | The model to use for image generation. Only &#x60;dall-e-2&#x60; is supported at this time. | [optional] 
**n** | **Integer** | The number of images to generate. Must be between 1 and 10. | [optional] [default to 1]
**size** | **String** | The size of the generated images. Must be one of &#x60;256x256&#x60;, &#x60;512x512&#x60;, or &#x60;1024x1024&#x60;. | [optional] [default to &#x27;1024x1024&#x27;]
**response_format** | **String** | The format in which the generated images are returned. Must be one of &#x60;url&#x60; or &#x60;b64_json&#x60;. URLs are only valid for 60 minutes after the image has been generated. | [optional] [default to &#x27;url&#x27;]
**user** | **String** | A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices#end-user-ids).  | [optional] 

