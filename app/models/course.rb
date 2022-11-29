class Course < ApplicationRecord
  extend FriendlyId

  validates :title, presence: true
  validates :description, presence: true, length: { :minimum => 5 }
  belongs_to :user

  has_rich_text :description
  friendly_id :title, use: :slugged
end
