class Course < ApplicationRecord
  extend FriendlyId

  validates :title, :short_description, :language, :price, :level, presence: true
  validates :description, presence: true, length: { :minimum => 5 }
  belongs_to :user

  has_rich_text :description
  friendly_id :title, use: :slugged

  LANGUAGES = [:"Ukrainian", :"English", :"Polish"]
  LEVELS = [:"Beginner", :"Intermediate", :"Advanced"]

  def self.languages
    LANGUAGES.map { |language| [language, language] }
  end

  def self.levels
    LEVELS.map { |level| [level, level] }
  end
end
