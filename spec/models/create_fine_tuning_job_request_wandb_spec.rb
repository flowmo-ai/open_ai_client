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

# Unit tests for OpenAIClient::CreateFineTuningJobRequestWandb
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CreateFineTuningJobRequestWandb' do
  before do
    # run before each test
    @instance = OpenAIClient::CreateFineTuningJobRequestWandb.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateFineTuningJobRequestWandb' do
    it 'should create an instance of CreateFineTuningJobRequestWandb' do
      expect(@instance).to be_instance_of(OpenAIClient::CreateFineTuningJobRequestWandb)
    end
  end
  describe 'test attribute "project"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "entity"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "tags"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
