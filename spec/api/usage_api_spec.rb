=begin
#OpenAI API

#The OpenAI REST API. Please see https://platform.openai.com/docs/api-reference for more details.

OpenAPI spec version: 2.3.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.63
=end

require 'spec_helper'
require 'json'

# Unit tests for OpenAIClient::UsageApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsageApi' do
  before do
    # run before each test
    @instance = OpenAIClient::UsageApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsageApi' do
    it 'should create an instance of UsageApi' do
      expect(@instance).to be_instance_of(OpenAIClient::UsageApi)
    end
  end

  # unit tests for usage_audio_speeches
  # Get audio speeches usage details for the organization.
  # @param start_time Start time (Unix seconds) of the query time range, inclusive.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :end_time End time (Unix seconds) of the query time range, exclusive.
  # @option opts [String] :bucket_width Width of each time bucket in response. Currently &#x60;1m&#x60;, &#x60;1h&#x60; and &#x60;1d&#x60; are supported, default to &#x60;1d&#x60;.
  # @option opts [Array<String>] :project_ids Return only usage for these projects.
  # @option opts [Array<String>] :user_ids Return only usage for these users.
  # @option opts [Array<String>] :api_key_ids Return only usage for these API keys.
  # @option opts [Array<String>] :models Return only usage for these models.
  # @option opts [Array<String>] :group_by Group the usage data by the specified fields. Support fields include &#x60;project_id&#x60;, &#x60;user_id&#x60;, &#x60;api_key_id&#x60;, &#x60;model&#x60; or any combination of them.
  # @option opts [Integer] :limit Specifies the number of buckets to return. - &#x60;bucket_width&#x3D;1d&#x60;: default: 7, max: 31 - &#x60;bucket_width&#x3D;1h&#x60;: default: 24, max: 168 - &#x60;bucket_width&#x3D;1m&#x60;: default: 60, max: 1440 
  # @option opts [String] :page A cursor for use in pagination. Corresponding to the &#x60;next_page&#x60; field from the previous response.
  # @return [UsageResponse]
  describe 'usage_audio_speeches test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for usage_audio_transcriptions
  # Get audio transcriptions usage details for the organization.
  # @param start_time Start time (Unix seconds) of the query time range, inclusive.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :end_time End time (Unix seconds) of the query time range, exclusive.
  # @option opts [String] :bucket_width Width of each time bucket in response. Currently &#x60;1m&#x60;, &#x60;1h&#x60; and &#x60;1d&#x60; are supported, default to &#x60;1d&#x60;.
  # @option opts [Array<String>] :project_ids Return only usage for these projects.
  # @option opts [Array<String>] :user_ids Return only usage for these users.
  # @option opts [Array<String>] :api_key_ids Return only usage for these API keys.
  # @option opts [Array<String>] :models Return only usage for these models.
  # @option opts [Array<String>] :group_by Group the usage data by the specified fields. Support fields include &#x60;project_id&#x60;, &#x60;user_id&#x60;, &#x60;api_key_id&#x60;, &#x60;model&#x60; or any combination of them.
  # @option opts [Integer] :limit Specifies the number of buckets to return. - &#x60;bucket_width&#x3D;1d&#x60;: default: 7, max: 31 - &#x60;bucket_width&#x3D;1h&#x60;: default: 24, max: 168 - &#x60;bucket_width&#x3D;1m&#x60;: default: 60, max: 1440 
  # @option opts [String] :page A cursor for use in pagination. Corresponding to the &#x60;next_page&#x60; field from the previous response.
  # @return [UsageResponse]
  describe 'usage_audio_transcriptions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for usage_code_interpreter_sessions
  # Get code interpreter sessions usage details for the organization.
  # @param start_time Start time (Unix seconds) of the query time range, inclusive.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :end_time End time (Unix seconds) of the query time range, exclusive.
  # @option opts [String] :bucket_width Width of each time bucket in response. Currently &#x60;1m&#x60;, &#x60;1h&#x60; and &#x60;1d&#x60; are supported, default to &#x60;1d&#x60;.
  # @option opts [Array<String>] :project_ids Return only usage for these projects.
  # @option opts [Array<String>] :group_by Group the usage data by the specified fields. Support fields include &#x60;project_id&#x60;.
  # @option opts [Integer] :limit Specifies the number of buckets to return. - &#x60;bucket_width&#x3D;1d&#x60;: default: 7, max: 31 - &#x60;bucket_width&#x3D;1h&#x60;: default: 24, max: 168 - &#x60;bucket_width&#x3D;1m&#x60;: default: 60, max: 1440 
  # @option opts [String] :page A cursor for use in pagination. Corresponding to the &#x60;next_page&#x60; field from the previous response.
  # @return [UsageResponse]
  describe 'usage_code_interpreter_sessions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for usage_completions
  # Get completions usage details for the organization.
  # @param start_time Start time (Unix seconds) of the query time range, inclusive.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :end_time End time (Unix seconds) of the query time range, exclusive.
  # @option opts [String] :bucket_width Width of each time bucket in response. Currently &#x60;1m&#x60;, &#x60;1h&#x60; and &#x60;1d&#x60; are supported, default to &#x60;1d&#x60;.
  # @option opts [Array<String>] :project_ids Return only usage for these projects.
  # @option opts [Array<String>] :user_ids Return only usage for these users.
  # @option opts [Array<String>] :api_key_ids Return only usage for these API keys.
  # @option opts [Array<String>] :models Return only usage for these models.
  # @option opts [BOOLEAN] :batch If &#x60;true&#x60;, return batch jobs only. If &#x60;false&#x60;, return non-batch jobs only. By default, return both. 
  # @option opts [Array<String>] :group_by Group the usage data by the specified fields. Support fields include &#x60;project_id&#x60;, &#x60;user_id&#x60;, &#x60;api_key_id&#x60;, &#x60;model&#x60;, &#x60;batch&#x60; or any combination of them.
  # @option opts [Integer] :limit Specifies the number of buckets to return. - &#x60;bucket_width&#x3D;1d&#x60;: default: 7, max: 31 - &#x60;bucket_width&#x3D;1h&#x60;: default: 24, max: 168 - &#x60;bucket_width&#x3D;1m&#x60;: default: 60, max: 1440 
  # @option opts [String] :page A cursor for use in pagination. Corresponding to the &#x60;next_page&#x60; field from the previous response.
  # @return [UsageResponse]
  describe 'usage_completions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for usage_costs
  # Get costs details for the organization.
  # @param start_time Start time (Unix seconds) of the query time range, inclusive.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :end_time End time (Unix seconds) of the query time range, exclusive.
  # @option opts [String] :bucket_width Width of each time bucket in response. Currently only &#x60;1d&#x60; is supported, default to &#x60;1d&#x60;.
  # @option opts [Array<String>] :project_ids Return only costs for these projects.
  # @option opts [Array<String>] :group_by Group the costs by the specified fields. Support fields include &#x60;project_id&#x60;, &#x60;line_item&#x60; and any combination of them.
  # @option opts [Integer] :limit A limit on the number of buckets to be returned. Limit can range between 1 and 180, and the default is 7. 
  # @option opts [String] :page A cursor for use in pagination. Corresponding to the &#x60;next_page&#x60; field from the previous response.
  # @return [UsageResponse]
  describe 'usage_costs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for usage_embeddings
  # Get embeddings usage details for the organization.
  # @param start_time Start time (Unix seconds) of the query time range, inclusive.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :end_time End time (Unix seconds) of the query time range, exclusive.
  # @option opts [String] :bucket_width Width of each time bucket in response. Currently &#x60;1m&#x60;, &#x60;1h&#x60; and &#x60;1d&#x60; are supported, default to &#x60;1d&#x60;.
  # @option opts [Array<String>] :project_ids Return only usage for these projects.
  # @option opts [Array<String>] :user_ids Return only usage for these users.
  # @option opts [Array<String>] :api_key_ids Return only usage for these API keys.
  # @option opts [Array<String>] :models Return only usage for these models.
  # @option opts [Array<String>] :group_by Group the usage data by the specified fields. Support fields include &#x60;project_id&#x60;, &#x60;user_id&#x60;, &#x60;api_key_id&#x60;, &#x60;model&#x60; or any combination of them.
  # @option opts [Integer] :limit Specifies the number of buckets to return. - &#x60;bucket_width&#x3D;1d&#x60;: default: 7, max: 31 - &#x60;bucket_width&#x3D;1h&#x60;: default: 24, max: 168 - &#x60;bucket_width&#x3D;1m&#x60;: default: 60, max: 1440 
  # @option opts [String] :page A cursor for use in pagination. Corresponding to the &#x60;next_page&#x60; field from the previous response.
  # @return [UsageResponse]
  describe 'usage_embeddings test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for usage_images
  # Get images usage details for the organization.
  # @param start_time Start time (Unix seconds) of the query time range, inclusive.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :end_time End time (Unix seconds) of the query time range, exclusive.
  # @option opts [String] :bucket_width Width of each time bucket in response. Currently &#x60;1m&#x60;, &#x60;1h&#x60; and &#x60;1d&#x60; are supported, default to &#x60;1d&#x60;.
  # @option opts [Array<String>] :sources Return only usages for these sources. Possible values are &#x60;image.generation&#x60;, &#x60;image.edit&#x60;, &#x60;image.variation&#x60; or any combination of them.
  # @option opts [Array<String>] :sizes Return only usages for these image sizes. Possible values are &#x60;256x256&#x60;, &#x60;512x512&#x60;, &#x60;1024x1024&#x60;, &#x60;1792x1792&#x60;, &#x60;1024x1792&#x60; or any combination of them.
  # @option opts [Array<String>] :project_ids Return only usage for these projects.
  # @option opts [Array<String>] :user_ids Return only usage for these users.
  # @option opts [Array<String>] :api_key_ids Return only usage for these API keys.
  # @option opts [Array<String>] :models Return only usage for these models.
  # @option opts [Array<String>] :group_by Group the usage data by the specified fields. Support fields include &#x60;project_id&#x60;, &#x60;user_id&#x60;, &#x60;api_key_id&#x60;, &#x60;model&#x60;, &#x60;size&#x60;, &#x60;source&#x60; or any combination of them.
  # @option opts [Integer] :limit Specifies the number of buckets to return. - &#x60;bucket_width&#x3D;1d&#x60;: default: 7, max: 31 - &#x60;bucket_width&#x3D;1h&#x60;: default: 24, max: 168 - &#x60;bucket_width&#x3D;1m&#x60;: default: 60, max: 1440 
  # @option opts [String] :page A cursor for use in pagination. Corresponding to the &#x60;next_page&#x60; field from the previous response.
  # @return [UsageResponse]
  describe 'usage_images test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for usage_moderations
  # Get moderations usage details for the organization.
  # @param start_time Start time (Unix seconds) of the query time range, inclusive.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :end_time End time (Unix seconds) of the query time range, exclusive.
  # @option opts [String] :bucket_width Width of each time bucket in response. Currently &#x60;1m&#x60;, &#x60;1h&#x60; and &#x60;1d&#x60; are supported, default to &#x60;1d&#x60;.
  # @option opts [Array<String>] :project_ids Return only usage for these projects.
  # @option opts [Array<String>] :user_ids Return only usage for these users.
  # @option opts [Array<String>] :api_key_ids Return only usage for these API keys.
  # @option opts [Array<String>] :models Return only usage for these models.
  # @option opts [Array<String>] :group_by Group the usage data by the specified fields. Support fields include &#x60;project_id&#x60;, &#x60;user_id&#x60;, &#x60;api_key_id&#x60;, &#x60;model&#x60; or any combination of them.
  # @option opts [Integer] :limit Specifies the number of buckets to return. - &#x60;bucket_width&#x3D;1d&#x60;: default: 7, max: 31 - &#x60;bucket_width&#x3D;1h&#x60;: default: 24, max: 168 - &#x60;bucket_width&#x3D;1m&#x60;: default: 60, max: 1440 
  # @option opts [String] :page A cursor for use in pagination. Corresponding to the &#x60;next_page&#x60; field from the previous response.
  # @return [UsageResponse]
  describe 'usage_moderations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for usage_vector_stores
  # Get vector stores usage details for the organization.
  # @param start_time Start time (Unix seconds) of the query time range, inclusive.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :end_time End time (Unix seconds) of the query time range, exclusive.
  # @option opts [String] :bucket_width Width of each time bucket in response. Currently &#x60;1m&#x60;, &#x60;1h&#x60; and &#x60;1d&#x60; are supported, default to &#x60;1d&#x60;.
  # @option opts [Array<String>] :project_ids Return only usage for these projects.
  # @option opts [Array<String>] :group_by Group the usage data by the specified fields. Support fields include &#x60;project_id&#x60;.
  # @option opts [Integer] :limit Specifies the number of buckets to return. - &#x60;bucket_width&#x3D;1d&#x60;: default: 7, max: 31 - &#x60;bucket_width&#x3D;1h&#x60;: default: 24, max: 168 - &#x60;bucket_width&#x3D;1m&#x60;: default: 60, max: 1440 
  # @option opts [String] :page A cursor for use in pagination. Corresponding to the &#x60;next_page&#x60; field from the previous response.
  # @return [UsageResponse]
  describe 'usage_vector_stores test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end