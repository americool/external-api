class Item < ActiveRecord::Base
  belongs_to :list
  validates :title, length: {minimum: 1, maximum: 40 }, presence: true
  validates :body, length: {minimum: 1, maximum: 1000 }, presence: true
end
