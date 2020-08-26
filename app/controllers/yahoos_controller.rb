class YahoosController < ApplicationController

  def index
    @post = Post.all
  end
end
