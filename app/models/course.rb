class Course < ApplicationRecord
  extend FriendlyId
  include PublicActivity::Model

  validates :title, :short_description, :language, :price, :level, presence: true
  validates :description, presence: true, length: { :minimum => 5 }
  belongs_to :user
  has_many :lessons, dependent: :destroy

  has_one_attached :avatar
  validates :avatar, attached: true,
            content_type: ['image/png', 'image/jpg', 'image/jpeg'],
            size: { less_than: 500.kilobytes , message: 'size should be under 500 kilobytes' }

  has_rich_text :description
  friendly_id :title, use: :slugged
  tracked owner: Proc.new { |controller, _model| controller.current_user }

  LANGUAGES = [:"Ukrainian", :"English", :"Polish"]
  LEVELS = [:"Beginner", :"Intermediate", :"Advanced"]

  def self.languages
    LANGUAGES.map { |language| [language, language] }
  end

  def self.levels
    LEVELS.map { |level| [level, level] }
  end
end
