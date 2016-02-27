class List < ActiveRecord::Base
  has_many :items
  belongs_to :user

  PUBLIC_VALIDATOR = /(public)|(Public)|(PUBLIC)/

  validates :title, length: {minimum: 1, maximum: 40 }, presence: true
  validates :permissions,
            format: {with: PUBLIC_VALIDATOR},
            on: :update

end
