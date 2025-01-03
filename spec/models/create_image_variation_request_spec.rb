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

# Unit tests for OpenAIClient::CreateImageVariationRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CreateImageVariationRequest' do
  before do
    # run before each test
    @instance = OpenAIClient::CreateImageVariationRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateImageVariationRequest' do
    it 'should create an instance of CreateImageVariationRequest' do
      expect(@instance).to be_instance_of(OpenAIClient::CreateImageVariationRequest)
    end
  end
  describe 'test attribute "image"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "model"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "n"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "response_format"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["url", "b64_json"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.response_format = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "size"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["256x256", "512x512", "1024x1024"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.size = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "user"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
