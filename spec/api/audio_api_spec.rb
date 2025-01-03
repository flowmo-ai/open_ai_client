=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

OpenAPI spec version: 2.3.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.63
=end

require 'spec_helper'
require 'json'

# Unit tests for OpenAIClient::AudioApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AudioApi' do
  before do
    # run before each test
    @instance = OpenAIClient::AudioApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AudioApi' do
    it 'should create an instance of AudioApi' do
      expect(@instance).to be_instance_of(OpenAIClient::AudioApi)
    end
  end

  # unit tests for create_speech
  # Generates audio from the input text.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'create_speech test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_transcription
  # Transcribes audio into the input language.
  # @param file 
  # @param model 
  # @param language 
  # @param prompt 
  # @param response_format 
  # @param temperature 
  # @param timestamp_granularities 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse200]
  describe 'create_transcription test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_translation
  # Translates audio into English.
  # @param file 
  # @param model 
  # @param prompt 
  # @param response_format 
  # @param temperature 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2001]
  describe 'create_translation test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
