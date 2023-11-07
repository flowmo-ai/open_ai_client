First install
```
brew install swagger-codegen
wget https://raw.githubusercontent.com/openai/openai-openapi/master/openapi.yaml
swagger-codegen generate -i ./openapi.yaml -l ruby --invoker-package OpenAIClient --api-package OpenAI -o . --additional-properties moduleName=OpenAIClient,packageVersion=2.0.0
```

API Update
```
rm -rf *
wget https://raw.githubusercontent.com/openai/openai-openapi/master/openapi.yaml
swagger-codegen generate -i ./openapi.yaml -l ruby --invoker-package OpenAIClient --api-package OpenAI -o . --additional-properties moduleName=OpenAIClient,packageVersion=2.0.0

```
