module Glassdoor
  module Convenience
    module ClassMethods

      def company
        Glassdoor::Clients::Company
      end
    end
  end
end
