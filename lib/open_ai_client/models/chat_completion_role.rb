=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

OpenAPI spec version: 2.3.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.63
=end

require 'date'

module OpenAIClient
  class ChatCompletionRole
    SYSTEM = 'system'.freeze
    USER = 'user'.freeze
    ASSISTANT = 'assistant'.freeze
    TOOL = 'tool'.freeze
    FUNCTION = 'function'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ChatCompletionRole.constants.select { |c| ChatCompletionRole::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ChatCompletionRole" if constantValues.empty?
      value
    end
  end
end
