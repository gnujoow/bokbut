class HomeController < ApplicationController
  def index
    @languages = Language.all
  end

  def coding
     @source_type = params[:lang]
  end

end
