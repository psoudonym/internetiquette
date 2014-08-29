class TryItsController < ApplicationController

  before_filter :do_stuff

  def create
  end

  def show
  end


  private

  def do_stuff
    @url = params[:url] || "http://psmag.com/navigation/health-and-behavior/women-arent-welcome-internet-72170/"
    render :action => :show
  end
end
