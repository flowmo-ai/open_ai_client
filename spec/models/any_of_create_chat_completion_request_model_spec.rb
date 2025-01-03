=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

OpenAPI spec version: 2.3.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.63
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenAIClient::AnyOfCreateChatCompletionRequestModel
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AnyOfCreateChatCompletionRequestModel' do
  before do
    # run before each test
    @instance = OpenAIClient::AnyOfCreateChatCompletionRequestModel.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AnyOfCreateChatCompletionRequestModel' do
    it 'should create an instance of AnyOfCreateChatCompletionRequestModel' do
      expect(@instance).to be_instance_of(OpenAIClient::AnyOfCreateChatCompletionRequestModel)
    end
  end
end
