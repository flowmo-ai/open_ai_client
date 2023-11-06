```
brew install swagger-codegen
wget https://raw.githubusercontent.com/openai/openai-openapi/master/openapi.yaml
swagger-codegen generate -i ./openapi.yaml -l ruby --invoker-package OpenAI --api-package OpenAI -o ./openai --additional-properties moduleName=OpenAI
```
