module Glassdoor
  class Config
    attr_accessor :partner_id, :partner_key, :base_uri, :time_out, :format, :version_api

    def initialize
      set_defaults
    end

    def to_hash
      {
        :partner_id                       => @partner_id,
        :partner_key                      => @partner_key,
        :time_out                         => @time_out,
        :format                           => @format,
        :version_api                      => @version_api
      }
    end

    protected
    #################################################################

    def set_defaults
      @partner_id           = 'ruby-glassdoor-api'  # Get a developer key at https://www.glassdoor.com/api/index.htm
      @partner_key          = 'ruby-glassdoor-api'
      @base_uri             = 'http://api.glassdoor.com/api/api.htm'
      @time_out             = 5
      @format               = 'json'
      @version_api          = '1'
    end
  end
end
