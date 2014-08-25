class HomesController < ApplicationController
  def show
    @mapping  = Mapping.new
    @mappings = Mapping.all
  end
end
