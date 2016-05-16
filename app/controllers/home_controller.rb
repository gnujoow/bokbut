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
    new_code.user_id=params[:id]
    new_code.language = params[:lang]
    new_code.description = params[:description]
    new_code.source = params[:source]
    new_code.shared = params[:shared]
    new_code.save
    redirect_to "/r/"+new_code.id.to_s
  end

  def review
    show_code = Code.find(params[:code_id])
    @description = show_code.description
    @source = show_code.source
    @language = show_code.language
    @date = show_code.created_at
    @code_id = params[:code_id]
  end

  def raw
    show_code = Code.find(params[:code_id])
    @source = show_code.source
  end

  def browse
    @every_code = Code.paginate(:page => params[:page])
  end

  def mypage
    @my_code = User.find(current_user.id)
    @languages = Language.all
  end

  def lg_change
    my = User.find(current_user.id)
    my.language=params[:lang]
    my.save
    redirect_to "/mypage"
  end
end
