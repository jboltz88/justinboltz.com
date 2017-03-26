class Post < ApplicationRecord
  # has_many :comments

  default_scope { order('date DESC') }

  validates :title, length: { minimum: 2}, presence: true
  validates :body, length: { minimum: 20 }, presence: true
  validates :date, presence: true
end
