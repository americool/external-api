class List < ActiveRecord::Base
  has_many :items
  belongs_to :user
  validates :title, length: {minimum: 1, maximum: 40 }, presence: true
end
