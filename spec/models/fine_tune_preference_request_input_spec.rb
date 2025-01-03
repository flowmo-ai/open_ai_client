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

# Unit tests for OpenAIClient::FineTunePreferenceRequestInput
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FineTunePreferenceRequestInput' do
  before do
    # run before each test
    @instance = OpenAIClient::FineTunePreferenceRequestInput.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FineTunePreferenceRequestInput' do
    it 'should create an instance of FineTunePreferenceRequestInput' do
      expect(@instance).to be_instance_of(OpenAIClient::FineTunePreferenceRequestInput)
    end
  end
  describe 'test attribute "input"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "preferred_completion"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "non_preferred_completion"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
