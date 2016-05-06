class HomeController < ApplicationController
  def index
    @languages = Language.all
  end

  def paste
    @languages = Language.all
    @source_type = params[:lang]
  end

  def write
    new_code = Code.new
    new_code.language = params[:lang]
    new_code.description = params[:description]
    new_code.source = params[:source]
    new_code.save
    redirect_to "/r/"+new_code.id.to_s
  end

  def review
    show_code = Code.find(params[:code_id])
    @description = show_code.description
    @source = show_code.source
    @language = show_code.language
  end

  def browse
    @every_code = Code.all.order("id desc")
  end

end
