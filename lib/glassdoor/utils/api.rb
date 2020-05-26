require 'rest-client'
require 'addressable'

module Glassdoor
  module Utils
    class RequestError < StandardError; end
    class ResponseUnsuccessError < StandardError; end

    class Api
      def self.instance
        Glassdoor::Utils::Api.new
      end

      def initialize
        @default_params  =  {
          't.p' => Glassdoor.configuration.partner_id,
          't.k' => Glassdoor.configuration.partner_key,
          userip: '0.0.0.0',
          useragent: '',
          v: Glassdoor.configuration.version_api,
          format: 'json',
          page: ''
        }
      end

      def gd_get(options={})
        uri = Addressable::URI.parse(Glassdoor.configuration.base_url)
        uri.query_values = options.merge(@default_params)

        response = RestClient::Request.execute(method: :get, url: uri.to_s, timeout: Glassdoor.configuration.time_out)
        response_hash = MultiJson.load(response)
        validate_response(response_hash)
      end

      def validate_response(response_hash)
        unless response_hash['success']
          raise ResponseUnsuccessError.new response_hash['status']
        end

        response_hash['response']
      end
    end
  end
end
