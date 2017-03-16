require "uri"

module MParticle
  class EventsApi
    attr_accessor :api_client

    def initialize(configuration)
      @api_client = ApiClient.new(configuration)
    end

    # Send events to mParticle
    # 
    # @param body Up to 100 Batch objects
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def bulk_upload_events(body, opts = {}, &callback)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EventsApi.bulk_upload_events ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling EventsApi.bulk_upload_events" if body.nil?
      # resource path
      local_var_path = "/bulkevents".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = ApiClient.object_to_json(body)
      auth_names = ['basic']
      if (callback.nil?)
        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names)
        if @api_client.config.debugging
          @api_client.config.logger.debug "API called: EventsApi#bulk_upload_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      else
        thread = @api_client.call_api(:POST, local_var_path,
          {
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names
          }) { |data, status_code, headers|
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: EventsApi#bulk_upload_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          yield data, status_code, headers
        }
        return thread
      end
    end

    # Send events to mParticle
    # 
    # @param body Batch of event data
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def upload_events(body, opts = {}, &callback)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EventsApi.upload_events ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling EventsApi.upload_events" if body.nil?
      # resource path
      local_var_path = "/events".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = ApiClient.object_to_json(body)
      auth_names = ['basic']
      if (callback.nil?)
        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
        if @api_client.config.debugging
          @api_client.config.logger.debug "API called: EventsApi#upload_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      else
        thread = @api_client.call_api(:POST, local_var_path,
          {
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names
          }) { |data, status_code, headers|
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: EventsApi#upload_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          yield data, status_code, headers
        }
        return thread
      end
    end
  end
end
