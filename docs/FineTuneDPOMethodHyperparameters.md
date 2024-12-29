# OpenAIClient::FineTuneDPOMethodHyperparameters

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**beta** | [**OneOfFineTuneDPOMethodHyperparametersBeta**](OneOfFineTuneDPOMethodHyperparametersBeta.md) | The beta value for the DPO method. A higher beta value will increase the weight of the penalty between the policy and reference model.  | [optional] 
**batch_size** | [**OneOfFineTuneDPOMethodHyperparametersBatchSize**](OneOfFineTuneDPOMethodHyperparametersBatchSize.md) | Number of examples in each batch. A larger batch size means that model parameters are updated less frequently, but with lower variance.  | [optional] 
**learning_rate_multiplier** | [**OneOfFineTuneDPOMethodHyperparametersLearningRateMultiplier**](OneOfFineTuneDPOMethodHyperparametersLearningRateMultiplier.md) | Scaling factor for the learning rate. A smaller learning rate may be useful to avoid overfitting.  | [optional] 
**n_epochs** | [**OneOfFineTuneDPOMethodHyperparametersNEpochs**](OneOfFineTuneDPOMethodHyperparametersNEpochs.md) | The number of epochs to train the model for. An epoch refers to one full cycle through the training dataset.  | [optional] 

