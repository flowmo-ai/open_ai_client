# OpenAIClient::RealtimeSessionCreateRequestInputAudioTranscription

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**model** | **String** | The model to use for transcription, &#x60;whisper-1&#x60; is the only currently  supported model.  | [optional] 
**language** | **String** | The language of the input audio. Supplying the input language in [ISO-639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) (e.g. &#x60;en&#x60;) format will improve accuracy and latency.  | [optional] 
**prompt** | **String** | An optional text to guide the model&#x27;s style or continue a previous audio segment. The [prompt](/docs/guides/speech-to-text#prompting) should match the audio language.  | [optional] 

