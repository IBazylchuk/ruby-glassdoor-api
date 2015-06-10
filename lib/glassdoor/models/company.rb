module Glassdoor
  module Models
    class Company
      attr_accessor :id, :name, :url,  :industry, :logo,
                    :overall_rating, :culture_and_values_rating, :senior_leadership_rating,
                    :compensation_and_benefits_rating, :career_opportunities_rating,
                    :work_life_balance_rating, :recommend_to_friend_rating, :review

      def initialize(args = {})
        return if args.nil?
        @id                               = args['id'] || ''
        @name                             = args['name'] || ''
        @url                              = args['website'] || ''
        @industry                         = args['industry'] || ''
        @overall_rating                   = args['overallRating'].to_f
        @culture_and_values_rating        = args['cultureAndValuesRating'].to_f
        @senior_leadership_rating         = args['seniorLeadershipRating'].to_f
        @compensation_and_benefits_rating = args['compensationAndBenefitsRating'].to_f
        @career_opportunities_rating      = args['careerOpportunitiesRating'].to_f
        @work_life_balance_rating         = args['workLifeBalanceRating'].to_f
        @recommend_to_friend_rating       = args['recommendToFriendRating'].to_f
        @logo                             = args['squareLogo'] || ''
        @review                           = Models::Review.new(args['featuredReview'] || nil)
      end
    end
  end
end
