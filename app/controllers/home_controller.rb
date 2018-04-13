class HomeController < ApplicationController
  def index
  	@album = Album.all
  end
 
end
