class ZombiesController < ApplicationController
  before_action :find_zombie
  before_action :has_tweets, only: :show
  def has_tweets
    redirect_to('zombies') if @zombie.tweets.size == 0
  end

  def show
    render action: :show
  end

  def find_zombie
    @zombie = Zombie.find params[:id]
  end
end
