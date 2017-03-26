class Project < ApplicationRecord
  validates :title, length: { minimum: 2}, presence: true
  validates :url, length: { minimum: 2}, presence: true
  validates :description, length: { minimum: 4}, presence: true
  validates :body, length: { minimum: 20 }, presence: true
end
