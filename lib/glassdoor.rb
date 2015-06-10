require "glassdoor/version"
require "glassdoor/config"
require "glassdoor/convenience"

def require_directory(relative_path)
  Dir[File.dirname(__FILE__) + relative_path].each { |file| require file }
end

%w(/glassdoor/utils/*.rb /glassdoor/clients/*.rb /glassdoor/models/*.rb).each { |path| require_directory path }

module Glassdoor
  extend Convenience::ClassMethods

  def self.configure
    yield configuration
  end

  def self.configuration
    @configuration ||= Glassdoor::Config.new
  end
end
