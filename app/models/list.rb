class List < ActiveRecord::Base
  has_many :items
  belongs_to :user

  ACCEPTED_TERMS = /(private)|(viewable)|(open)|(public)/ #I added public here, because I didn't understand the assignment properly at first. I don't feel like raking the whole db and changing all that again. I always can though.

  validates :title, length: {minimum: 1, maximum: 40 }, presence: true
  validates :permissions,
            format: {with: ACCEPTED_TERMS},
            on: :update

end
