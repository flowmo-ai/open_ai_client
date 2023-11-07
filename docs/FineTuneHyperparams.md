# OpenAIClient::FineTuneHyperparams

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**batch_size** | **Integer** | The batch size to use for training. The batch size is the number of training examples used to train a single forward and backward pass.  | 
**classification_n_classes** | **Integer** | The number of classes to use for computing classification metrics.  | [optional] 
**classification_positive_class** | **String** | The positive class to use for computing classification metrics.  | [optional] 
**compute_classification_metrics** | **BOOLEAN** | The classification metrics to compute using the validation dataset at the end of every epoch.  | [optional] 
**learning_rate_multiplier** | [**BigDecimal**](BigDecimal.md) | The learning rate multiplier to use for training.  | 
**n_epochs** | **Integer** | The number of epochs to train the model for. An epoch refers to one full cycle through the training dataset.  | 
**prompt_loss_weight** | [**BigDecimal**](BigDecimal.md) | The weight to use for loss on the prompt tokens.  | 

