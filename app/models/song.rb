class Song < ApplicationRecord
  validates :title, presence: true
  validates :artist, presence: true
  validates :year, inclusion: { in: 1995..2020, message: "1995~2020の間で年代を入力してください。" }
end
