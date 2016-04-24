class TweetsController < ApplicationController
  def index
    @tweets = Tweet.recent.includes(:location)
  end
end
