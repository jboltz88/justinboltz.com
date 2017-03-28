class Post < ApplicationRecord
  # has_many :comments
  has_attached_file :image, styles: { large: "800x800>", thumb: "300x300>" }, default_url: "/images/:style/missing.png"
  do_not_validate_attachment_file_type :image
  
  default_scope { order('date DESC') }

  validates :title, length: { minimum: 2}, presence: true
  validates :body, length: { minimum: 20 }, presence: true
  validates :date, presence: true
end
