class DiscGolfReview < ApplicationRecord
  belongs_to :user
  belongs_to :disc_golf_course
end
