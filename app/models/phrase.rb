class Phrase < ApplicationRecord
  validates :content, presence: true
  validates :year, presence: true
end