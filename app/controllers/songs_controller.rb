class YearValidator
  include ActiveModel::Model

  attr_accessor :year
  validates :year, inclusion: { in: 1995..2020, message: "は1995〜2020の間で入力してください" }
end

class SongsController < ApplicationController
  def index
  end

  def result
    @year = params[:year].to_i
  
    year_validator = YearValidator.new(year: @year)
    unless year_validator.valid?
      flash[:alert] = year_validator.errors[:year].join(", ")
      redirect_to root_path and return
    end
  
    @songs = Song.where(year: @year).limit(3)
    song_texts = @songs.map { |song| "#{song.artist} - #{song.title}" }

    @passed_years = 2023 - @year
    # ランダムな流行の言葉を取得
    @phrases = Phrase.where(year: @year).limit(4)

    @tweet_content = "#{@passed_years}年時を巻き戻しました~ #{@year}年の人気曲上位3曲: " + song_texts.join(", ")
  end
end

