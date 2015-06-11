module Glassdoor
  module Clients
    module Review
      def self.find_by_company_id(company_id)
        api = Glassdoor::Utils::Api.instance
        hash  = api.gd_get(action: 'employer-overview', employerId: company_id)

        # if hash['employers'].any?
        #   company = hash['employers'].find { |h| h['exactMatch'] }
        #   Models::Review.new(company)
        # else
        #   nil
        # end
      end
    end
  end
end
