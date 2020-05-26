module Glassdoor
  module Models
    class Review
      attr_reader :id, :date, :job_title,  :location, :logo,

                    :headline, :pros, :cons, :overall

      def initialize(args = {})
        return if args.nil?
        @id               = args['id'] || ''
        @date             = args['reviewDateTime'] || ''
        @job_title        = args['jobTitle'] || ''
        @industry         = args['industry'] || ''
        @location         = args['location']
        @headline         = args['headline']
        @pros             = args['pros']
        @cons             = args['cons']
        @overall          = args['overall'].to_f
      end
    end
  end
end
