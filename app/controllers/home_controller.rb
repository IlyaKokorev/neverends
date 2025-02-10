class HomeController < ApplicationController
  def index
    session[:compliment_ids] ||= Compliment.pluck(:id).shuffle

    @compliment = Compliment.find(session[:compliment_ids].pop)

    if session[:compliment_ids].empty?
      session[:compliment_ids] = Compliment.pluck(:id).shuffle
    end

    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end
end
