class Lesson < ApplicationRecord

  validates :title, :context, :course, presence: true

  belongs_to :course

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_rich_text :context
end
