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

# Unit tests for OpenAIClient::RealtimeServerEventResponseContentPartDonePart
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RealtimeServerEventResponseContentPartDonePart' do
  before do
    # run before each test
    @instance = OpenAIClient::RealtimeServerEventResponseContentPartDonePart.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RealtimeServerEventResponseContentPartDonePart' do
    it 'should create an instance of RealtimeServerEventResponseContentPartDonePart' do
      expect(@instance).to be_instance_of(OpenAIClient::RealtimeServerEventResponseContentPartDonePart)
    end
  end
  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["audio", "text"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "text"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "audio"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "transcript"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
