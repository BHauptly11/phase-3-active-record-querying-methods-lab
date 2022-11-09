class Show < ActiveRecord::Base
    def self.highest_rating
        Show.maximum(:rating)
    end

    def self.lowest_rating
        Show.minimum(:rating)
    end

    def most_popular_show
        Show.where("rating = ?", Show.maximum(:rating))
    end
end