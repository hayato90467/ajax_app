class YahoosController < ApplicationController

  def index
    @yahoos =Yahoo.all.order(id: "DESC")
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
 
  def checked
    yahoo = Yahoo.find(params[:id])
    if yahoo.checked 
      yahoo.update(checked: false)
    else
      yahoo.update(checked: true)
    end

    item = Yahoo.find(params[:id])
    render json: { yahoo: item }
  end
 end