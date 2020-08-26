class YahoosController < ApplicationController

  def index
    @yahoos =Yahoo.all.order(id: "DESC")
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
 
 end