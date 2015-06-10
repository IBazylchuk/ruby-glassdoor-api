require 'httparty'

module Glassdoor
  module Utils
    class RequestError < Exception; end
    class ResponseUnsuccessError < Exception; end

    class Api
      include HTTParty

      base_uri 'http://api.glassdoor.com/api/api.htm'

      def self.instance
        api = Glassdoor::Utils::Api.new
        api
      end

      def initialize
        self.class.default_params 't.p' => Glassdoor.configuration.partner_id,
                                  't.k' => Glassdoor.configuration.partner_key,
                                  userip: '0.0.0.0',
                                  useragent: '',
                                  v: Glassdoor.configuration.version_api,
                                  format: 'json',
                                  page: ''


        self.class.default_timeout Glassdoor.configuration.time_out
      end

      def gd_get(options={})
        self.class.base_uri Glassdoor.configuration.base_uri
        options = options.merge(self.class.default_params)
        response = self.class.get('', query: options)
        validate_response(response)
      end

      def validate_response(response)
        if response.code == 200
          hash = JSON.parse(response.body)
          unless hash['success']
            raise ResponseUnsuccessError.new hash['status']
          end
          hash['response']
        else
          raise RequestError.new response.message
        end
      end
    end
  end
end
