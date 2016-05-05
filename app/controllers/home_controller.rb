class HomeController < ApplicationController
  def index
    @languages = Language.all
  end

  def coding
     @source_type = params[:lang]
  end

  def review
    @description = params[:description]
    @source = params[:source]
  end

end
