class Project < ApplicationRecord
  validates :title, length: { minimum: 2}, presence: true
  validates :body, length: { minimum: 20 }, presence: true
end
