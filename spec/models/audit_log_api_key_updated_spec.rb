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

# Unit tests for OpenAIClient::AuditLogApiKeyUpdated
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuditLogApiKeyUpdated' do
  before do
    # run before each test
    @instance = OpenAIClient::AuditLogApiKeyUpdated.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuditLogApiKeyUpdated' do
    it 'should create an instance of AuditLogApiKeyUpdated' do
      expect(@instance).to be_instance_of(OpenAIClient::AuditLogApiKeyUpdated)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "changes_requested"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
