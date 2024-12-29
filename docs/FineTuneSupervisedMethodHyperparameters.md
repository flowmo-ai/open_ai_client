# OpenAIClient::FineTuneSupervisedMethodHyperparameters

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**batch_size** | [**OneOfFineTuneSupervisedMethodHyperparametersBatchSize**](OneOfFineTuneSupervisedMethodHyperparametersBatchSize.md) | Number of examples in each batch. A larger batch size means that model parameters are updated less frequently, but with lower variance.  | [optional] 
**learning_rate_multiplier** | [**OneOfFineTuneSupervisedMethodHyperparametersLearningRateMultiplier**](OneOfFineTuneSupervisedMethodHyperparametersLearningRateMultiplier.md) | Scaling factor for the learning rate. A smaller learning rate may be useful to avoid overfitting.  | [optional] 
**n_epochs** | [**OneOfFineTuneSupervisedMethodHyperparametersNEpochs**](OneOfFineTuneSupervisedMethodHyperparametersNEpochs.md) | The number of epochs to train the model for. An epoch refers to one full cycle through the training dataset.  | [optional] 

