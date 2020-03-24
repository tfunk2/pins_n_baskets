class User < ApplicationRecord
    has_many :golf_reviews
    has_many :disc_golf_reviews
end
