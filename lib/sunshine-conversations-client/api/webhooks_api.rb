=begin
#Sunshine Conversations API

The version of the OpenAPI document: 12.6.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'cgi'

module SunshineConversationsClient
  class WebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Webhook
    # Creates a new webhook associated with a Sunshine Conversations Connect integration or a custom integration.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param webhook_create_body [WebhookCreateBody] 
    # @param [Hash] opts the optional parameters
    # @return [WebhookResponse]
    def create_webhook(app_id, integration_id, webhook_create_body, opts = {})
      data, _status_code, _headers = create_webhook_with_http_info(app_id, integration_id, webhook_create_body, opts)
      data
    end

    # Create Webhook
    # Creates a new webhook associated with a Sunshine Conversations Connect integration or a custom integration.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param webhook_create_body [WebhookCreateBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookResponse, Integer, Hash)>] WebhookResponse data, response status code and response headers
    def create_webhook_with_http_info(app_id, integration_id, webhook_create_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.create_webhook ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling WebhooksApi.create_webhook"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling WebhooksApi.create_webhook"
      end
      # verify the required parameter 'webhook_create_body' is set
      if @api_client.config.client_side_validation && webhook_create_body.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_create_body' when calling WebhooksApi.create_webhook"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/integrations/{integrationId}/webhooks'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'integrationId' + '}', CGI.escape(integration_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(webhook_create_body) 

      # return_type
      return_type = opts[:return_type] || 'WebhookResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#create_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Webhook
    # Deletes the specified webhook associated with a Sunshine Conversations Connect integration or a custom integration.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param webhook_id [String] The id of the webhook.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_webhook(app_id, integration_id, webhook_id, opts = {})
      data, _status_code, _headers = delete_webhook_with_http_info(app_id, integration_id, webhook_id, opts)
      data
    end

    # Delete Webhook
    # Deletes the specified webhook associated with a Sunshine Conversations Connect integration or a custom integration.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param webhook_id [String] The id of the webhook.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_webhook_with_http_info(app_id, integration_id, webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.delete_webhook ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling WebhooksApi.delete_webhook"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling WebhooksApi.delete_webhook"
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.delete_webhook"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/integrations/{integrationId}/webhooks/{webhookId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'integrationId' + '}', CGI.escape(integration_id.to_s)).sub('{' + 'webhookId' + '}', CGI.escape(webhook_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#delete_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Webhook
    # Gets the specified webhook associated with a Sunshine Conversations Connect integration or a custom integration.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param webhook_id [String] The id of the webhook.
    # @param [Hash] opts the optional parameters
    # @return [WebhookResponse]
    def get_webhook(app_id, integration_id, webhook_id, opts = {})
      data, _status_code, _headers = get_webhook_with_http_info(app_id, integration_id, webhook_id, opts)
      data
    end

    # Get Webhook
    # Gets the specified webhook associated with a Sunshine Conversations Connect integration or a custom integration.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param webhook_id [String] The id of the webhook.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookResponse, Integer, Hash)>] WebhookResponse data, response status code and response headers
    def get_webhook_with_http_info(app_id, integration_id, webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.get_webhook ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling WebhooksApi.get_webhook"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling WebhooksApi.get_webhook"
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.get_webhook"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/integrations/{integrationId}/webhooks/{webhookId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'integrationId' + '}', CGI.escape(integration_id.to_s)).sub('{' + 'webhookId' + '}', CGI.escape(webhook_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'WebhookResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Webhooks
    # Lists all webhooks for a given Sunshine Conversations Connect integration or custom integration.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param [Hash] opts the optional parameters
    # @return [WebhookListResponse]
    def list_webhooks(app_id, integration_id, opts = {})
      data, _status_code, _headers = list_webhooks_with_http_info(app_id, integration_id, opts)
      data
    end

    # List Webhooks
    # Lists all webhooks for a given Sunshine Conversations Connect integration or custom integration.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookListResponse, Integer, Hash)>] WebhookListResponse data, response status code and response headers
    def list_webhooks_with_http_info(app_id, integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.list_webhooks ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling WebhooksApi.list_webhooks"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling WebhooksApi.list_webhooks"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/integrations/{integrationId}/webhooks'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'integrationId' + '}', CGI.escape(integration_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'WebhookListResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#list_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Webhook
    # Updates the specified webhook associated with a Sunshine Conversations Connect integration or a custom integration.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param webhook_id [String] The id of the webhook.
    # @param webhook_body [WebhookBody] 
    # @param [Hash] opts the optional parameters
    # @return [WebhookResponse]
    def update_webhook(app_id, integration_id, webhook_id, webhook_body, opts = {})
      data, _status_code, _headers = update_webhook_with_http_info(app_id, integration_id, webhook_id, webhook_body, opts)
      data
    end

    # Update Webhook
    # Updates the specified webhook associated with a Sunshine Conversations Connect integration or a custom integration.
    # @param app_id [String] Identifies the app.
    # @param integration_id [String] The id of the integration.
    # @param webhook_id [String] The id of the webhook.
    # @param webhook_body [WebhookBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookResponse, Integer, Hash)>] WebhookResponse data, response status code and response headers
    def update_webhook_with_http_info(app_id, integration_id, webhook_id, webhook_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.update_webhook ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling WebhooksApi.update_webhook"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling WebhooksApi.update_webhook"
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.update_webhook"
      end
      # verify the required parameter 'webhook_body' is set
      if @api_client.config.client_side_validation && webhook_body.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_body' when calling WebhooksApi.update_webhook"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/integrations/{integrationId}/webhooks/{webhookId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'integrationId' + '}', CGI.escape(integration_id.to_s)).sub('{' + 'webhookId' + '}', CGI.escape(webhook_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(webhook_body) 

      # return_type
      return_type = opts[:return_type] || 'WebhookResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#update_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
