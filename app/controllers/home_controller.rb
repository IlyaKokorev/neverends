class HomeController < ApplicationController
  def index
    session[:compliment_ids] ||= Compliment.pluck(:id).shuffle

    @compliment = Compliment.find(session[:compliment_ids].pop)

    if session[:compliment_ids].empty?
      session[:compliment_ids] = Compliment.pluck(:id).shuffle
    end
  end
end