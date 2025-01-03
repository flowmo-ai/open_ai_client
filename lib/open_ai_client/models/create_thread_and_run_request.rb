=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

OpenAPI spec version: 2.3.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.63
=end

require 'date'

module OpenAIClient
  class CreateThreadAndRunRequest
    # The ID of the [assistant](/docs/api-reference/assistants) to use to execute this run.
    attr_accessor :assistant_id

    attr_accessor :thread

    # The ID of the [Model](/docs/api-reference/models) to be used to execute this run. If a value is provided here, it will override the model associated with the assistant. If not, the model associated with the assistant will be used.
    attr_accessor :model

    # Override the default system message of the assistant. This is useful for modifying the behavior on a per-run basis.
    attr_accessor :instructions

    # Override the tools the assistant can use for this run. This is useful for modifying the behavior on a per-run basis.
    attr_accessor :tools

    attr_accessor :tool_resources

    # Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maximum of 512 characters long. 
    attr_accessor :metadata

    # What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. 
    attr_accessor :temperature

    # An alternative to sampling with temperature, called nucleus sampling, where the model considers the results of the tokens with top_p probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered.  We generally recommend altering this or temperature but not both. 
    attr_accessor :top_p

    # If `true`, returns a stream of events that happen during the Run as server-sent events, terminating when the Run enters a terminal state with a `data: [DONE]` message. 
    attr_accessor :stream

    # The maximum number of prompt tokens that may be used over the course of the run. The run will make a best effort to use only the number of prompt tokens specified, across multiple turns of the run. If the run exceeds the number of prompt tokens specified, the run will end with status `incomplete`. See `incomplete_details` for more info. 
    attr_accessor :max_prompt_tokens

    # The maximum number of completion tokens that may be used over the course of the run. The run will make a best effort to use only the number of completion tokens specified, across multiple turns of the run. If the run exceeds the number of completion tokens specified, the run will end with status `incomplete`. See `incomplete_details` for more info. 
    attr_accessor :max_completion_tokens

    attr_accessor :truncation_strategy

    attr_accessor :tool_choice

    attr_accessor :parallel_tool_calls

    attr_accessor :response_format

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'assistant_id' => :'assistant_id',
        :'thread' => :'thread',
        :'model' => :'model',
        :'instructions' => :'instructions',
        :'tools' => :'tools',
        :'tool_resources' => :'tool_resources',
        :'metadata' => :'metadata',
        :'temperature' => :'temperature',
        :'top_p' => :'top_p',
        :'stream' => :'stream',
        :'max_prompt_tokens' => :'max_prompt_tokens',
        :'max_completion_tokens' => :'max_completion_tokens',
        :'truncation_strategy' => :'truncation_strategy',
        :'tool_choice' => :'tool_choice',
        :'parallel_tool_calls' => :'parallel_tool_calls',
        :'response_format' => :'response_format'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'assistant_id' => :'Object',
        :'thread' => :'Object',
        :'model' => :'Object',
        :'instructions' => :'Object',
        :'tools' => :'Object',
        :'tool_resources' => :'Object',
        :'metadata' => :'Object',
        :'temperature' => :'Object',
        :'top_p' => :'Object',
        :'stream' => :'Object',
        :'max_prompt_tokens' => :'Object',
        :'max_completion_tokens' => :'Object',
        :'truncation_strategy' => :'Object',
        :'tool_choice' => :'Object',
        :'parallel_tool_calls' => :'Object',
        :'response_format' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'model',
        :'instructions',
        :'tools',
        :'metadata',
        :'temperature',
        :'top_p',
        :'stream',
        :'max_prompt_tokens',
        :'max_completion_tokens',
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenAIClient::CreateThreadAndRunRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenAIClient::CreateThreadAndRunRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'assistant_id')
        self.assistant_id = attributes[:'assistant_id']
      end

      if attributes.key?(:'thread')
        self.thread = attributes[:'thread']
      end

      if attributes.key?(:'model')
        self.model = attributes[:'model']
      end

      if attributes.key?(:'instructions')
        self.instructions = attributes[:'instructions']
      end

      if attributes.key?(:'tools')
        if (value = attributes[:'tools']).is_a?(Array)
          self.tools = value
        end
      end

      if attributes.key?(:'tool_resources')
        self.tool_resources = attributes[:'tool_resources']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
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

      if attributes.key?(:'stream')
        self.stream = attributes[:'stream']
      end

      if attributes.key?(:'max_prompt_tokens')
        self.max_prompt_tokens = attributes[:'max_prompt_tokens']
      end

      if attributes.key?(:'max_completion_tokens')
        self.max_completion_tokens = attributes[:'max_completion_tokens']
      end

      if attributes.key?(:'truncation_strategy')
        self.truncation_strategy = attributes[:'truncation_strategy']
      end

      if attributes.key?(:'tool_choice')
        self.tool_choice = attributes[:'tool_choice']
      end

      if attributes.key?(:'parallel_tool_calls')
        self.parallel_tool_calls = attributes[:'parallel_tool_calls']
      end

      if attributes.key?(:'response_format')
        self.response_format = attributes[:'response_format']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @assistant_id.nil?
        invalid_properties.push('invalid value for "assistant_id", assistant_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @assistant_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          assistant_id == o.assistant_id &&
          thread == o.thread &&
          model == o.model &&
          instructions == o.instructions &&
          tools == o.tools &&
          tool_resources == o.tool_resources &&
          metadata == o.metadata &&
          temperature == o.temperature &&
          top_p == o.top_p &&
          stream == o.stream &&
          max_prompt_tokens == o.max_prompt_tokens &&
          max_completion_tokens == o.max_completion_tokens &&
          truncation_strategy == o.truncation_strategy &&
          tool_choice == o.tool_choice &&
          parallel_tool_calls == o.parallel_tool_calls &&
          response_format == o.response_format
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [assistant_id, thread, model, instructions, tools, tool_resources, metadata, temperature, top_p, stream, max_prompt_tokens, max_completion_tokens, truncation_strategy, tool_choice, parallel_tool_calls, response_format].hash
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
