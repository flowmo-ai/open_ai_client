=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.50
=end

require 'date'

module OpenAIClient
  class CreateCompletionRequest
    # ID of the model to use. You can use the [List models](/docs/api-reference/models/list) API to see all of your available models, or see our [Model overview](/docs/models/overview) for descriptions of them. 
    attr_accessor :model

    # The prompt(s) to generate completions for, encoded as a string, array of strings, array of tokens, or array of token arrays.  Note that <|endoftext|> is the document separator that the model sees during training, so if a prompt is not specified the model will generate as if from the beginning of a new document. 
    attr_accessor :prompt

    # Generates `best_of` completions server-side and returns the \"best\" (the one with the highest log probability per token). Results cannot be streamed.  When used with `n`, `best_of` controls the number of candidate completions and `n` specifies how many to return – `best_of` must be greater than `n`.  **Note:** Because this parameter generates many completions, it can quickly consume your token quota. Use carefully and ensure that you have reasonable settings for `max_tokens` and `stop`. 
    attr_accessor :best_of

    # Echo back the prompt in addition to the completion 
    attr_accessor :echo

    # Number between -2.0 and 2.0. Positive values penalize new tokens based on their existing frequency in the text so far, decreasing the model's likelihood to repeat the same line verbatim.  [See more information about frequency and presence penalties.](/docs/guides/gpt/parameter-details) 
    attr_accessor :frequency_penalty

    # Modify the likelihood of specified tokens appearing in the completion.  Accepts a JSON object that maps tokens (specified by their token ID in the GPT tokenizer) to an associated bias value from -100 to 100. You can use this [tokenizer tool](/tokenizer?view=bpe) (which works for both GPT-2 and GPT-3) to convert text to token IDs. Mathematically, the bias is added to the logits generated by the model prior to sampling. The exact effect will vary per model, but values between -1 and 1 should decrease or increase likelihood of selection; values like -100 or 100 should result in a ban or exclusive selection of the relevant token.  As an example, you can pass `{\"50256\": -100}` to prevent the <|endoftext|> token from being generated. 
    attr_accessor :logit_bias

    # Include the log probabilities on the `logprobs` most likely tokens, as well the chosen tokens. For example, if `logprobs` is 5, the API will return a list of the 5 most likely tokens. The API will always return the `logprob` of the sampled token, so there may be up to `logprobs+1` elements in the response.  The maximum value for `logprobs` is 5. 
    attr_accessor :logprobs

    # The maximum number of [tokens](/tokenizer) to generate in the completion.  The token count of your prompt plus `max_tokens` cannot exceed the model's context length. [Example Python code](https://cookbook.openai.com/examples/how_to_count_tokens_with_tiktoken) for counting tokens. 
    attr_accessor :max_tokens

    # How many completions to generate for each prompt.  **Note:** Because this parameter generates many completions, it can quickly consume your token quota. Use carefully and ensure that you have reasonable settings for `max_tokens` and `stop`. 
    attr_accessor :n

    # Number between -2.0 and 2.0. Positive values penalize new tokens based on whether they appear in the text so far, increasing the model's likelihood to talk about new topics.  [See more information about frequency and presence penalties.](/docs/guides/gpt/parameter-details) 
    attr_accessor :presence_penalty

    # If specified, our system will make a best effort to sample deterministically, such that repeated requests with the same `seed` and parameters should return the same result.  Determinism is not guaranteed, and you should refer to the `system_fingerprint` response parameter to monitor changes in the backend. 
    attr_accessor :seed

    # Up to 4 sequences where the API will stop generating further tokens. The returned text will not contain the stop sequence. 
    attr_accessor :stop

    # Whether to stream back partial progress. If set, tokens will be sent as data-only [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events#Event_stream_format) as they become available, with the stream terminated by a `data: [DONE]` message. [Example Python code](https://cookbook.openai.com/examples/how_to_stream_completions). 
    attr_accessor :stream

    # The suffix that comes after a completion of inserted text.
    attr_accessor :suffix

    # What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic.  We generally recommend altering this or `top_p` but not both. 
    attr_accessor :temperature

    # An alternative to sampling with temperature, called nucleus sampling, where the model considers the results of the tokens with top_p probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered.  We generally recommend altering this or `temperature` but not both. 
    attr_accessor :top_p

    # A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids). 
    attr_accessor :user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'model' => :'model',
        :'prompt' => :'prompt',
        :'best_of' => :'best_of',
        :'echo' => :'echo',
        :'frequency_penalty' => :'frequency_penalty',
        :'logit_bias' => :'logit_bias',
        :'logprobs' => :'logprobs',
        :'max_tokens' => :'max_tokens',
        :'n' => :'n',
        :'presence_penalty' => :'presence_penalty',
        :'seed' => :'seed',
        :'stop' => :'stop',
        :'stream' => :'stream',
        :'suffix' => :'suffix',
        :'temperature' => :'temperature',
        :'top_p' => :'top_p',
        :'user' => :'user'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'model' => :'Object',
        :'prompt' => :'Object',
        :'best_of' => :'Object',
        :'echo' => :'Object',
        :'frequency_penalty' => :'Object',
        :'logit_bias' => :'Object',
        :'logprobs' => :'Object',
        :'max_tokens' => :'Object',
        :'n' => :'Object',
        :'presence_penalty' => :'Object',
        :'seed' => :'Object',
        :'stop' => :'Object',
        :'stream' => :'Object',
        :'suffix' => :'Object',
        :'temperature' => :'Object',
        :'top_p' => :'Object',
        :'user' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'prompt',
        :'best_of',
        :'echo',
        :'frequency_penalty',
        :'logit_bias',
        :'logprobs',
        :'max_tokens',
        :'n',
        :'presence_penalty',
        :'seed',
        :'stop',
        :'stream',
        :'suffix',
        :'temperature',
        :'top_p',
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenAIClient::CreateCompletionRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenAIClient::CreateCompletionRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'model')
        self.model = attributes[:'model']
      end

      if attributes.key?(:'prompt')
        self.prompt = attributes[:'prompt']
      end

      if attributes.key?(:'best_of')
        self.best_of = attributes[:'best_of']
      else
        self.best_of = 1
      end

      if attributes.key?(:'echo')
        self.echo = attributes[:'echo']
      else
        self.echo = false
      end

      if attributes.key?(:'frequency_penalty')
        self.frequency_penalty = attributes[:'frequency_penalty']
      else
        self.frequency_penalty = 0
      end

      if attributes.key?(:'logit_bias')
        if (value = attributes[:'logit_bias']).is_a?(Hash)
          self.logit_bias = value
        end
      end

      if attributes.key?(:'logprobs')
        self.logprobs = attributes[:'logprobs']
      end

      if attributes.key?(:'max_tokens')
        self.max_tokens = attributes[:'max_tokens']
      else
        self.max_tokens = 16
      end

      if attributes.key?(:'n')
        self.n = attributes[:'n']
      else
        self.n = 1
      end

      if attributes.key?(:'presence_penalty')
        self.presence_penalty = attributes[:'presence_penalty']
      else
        self.presence_penalty = 0
      end

      if attributes.key?(:'seed')
        self.seed = attributes[:'seed']
      end

      if attributes.key?(:'stop')
        self.stop = attributes[:'stop']
      end

      if attributes.key?(:'stream')
        self.stream = attributes[:'stream']
      else
        self.stream = false
      end

      if attributes.key?(:'suffix')
        self.suffix = attributes[:'suffix']
      end

      if attributes.key?(:'temperature')
        self.temperature = attributes[:'temperature']
      else
        self.temperature = 1
      end

      if attributes.key?(:'top_p')
        self.top_p = attributes[:'top_p']
      else
        self.top_p = 1
      end

      if attributes.key?(:'user')
        self.user = attributes[:'user']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @model.nil?
        invalid_properties.push('invalid value for "model", model cannot be nil.')
      end

      if @prompt.nil?
        invalid_properties.push('invalid value for "prompt", prompt cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @model.nil?
      return false if @prompt.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          model == o.model &&
          prompt == o.prompt &&
          best_of == o.best_of &&
          echo == o.echo &&
          frequency_penalty == o.frequency_penalty &&
          logit_bias == o.logit_bias &&
          logprobs == o.logprobs &&
          max_tokens == o.max_tokens &&
          n == o.n &&
          presence_penalty == o.presence_penalty &&
          seed == o.seed &&
          stop == o.stop &&
          stream == o.stream &&
          suffix == o.suffix &&
          temperature == o.temperature &&
          top_p == o.top_p &&
          user == o.user
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [model, prompt, best_of, echo, frequency_penalty, logit_bias, logprobs, max_tokens, n, presence_penalty, seed, stop, stream, suffix, temperature, top_p, user].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        OpenAIClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end