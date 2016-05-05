class HomeController < ApplicationController
  def index
    @languages = Language.all
  end

  def coding
    @languages = Language.all
    @source_type = params[:lang]
  end

  def review
    @source_type = params[:lang]
    @description = params[:description]
    @source = params[:source]
  end

end
