# frozen_string_literal: true

class Movie < ActiveRecord::Base
  def self.with_ratings(ratings)
    l = Movie.all
    l = l.where(rating: ratings) unless ratings.empty?
    l
  end

  def self.all_ratings
    ['G', 'PG', 'PG-13', 'R']
  end
end
