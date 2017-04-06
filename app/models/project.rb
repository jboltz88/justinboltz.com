class Project < ApplicationRecord
  has_attached_file :screenshot, styles: { large: "800x800>", medium: "500x500", thumb: "300x300>" }, default_url: "/images/:style/missing.png"
  do_not_validate_attachment_file_type :screenshot

  validates :title, length: { minimum: 2}, presence: true
  validates :url, length: { minimum: 2}, presence: true
  validates :github_url, length: { minimum: 2}, presence: true
  validates :description, length: { minimum: 4}, presence: true
  validates :body, length: { minimum: 20 }, presence: true
end
