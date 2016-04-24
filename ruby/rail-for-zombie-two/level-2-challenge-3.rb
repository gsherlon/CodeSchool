class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    @graveyard_tweets =Tweet.recent.graveyard
  end
end
