class HomeController < ApplicationController
  def index
  end
  
  def write

    post = Post.new

    post.item1 = params[:item_val1]
    post.item2 = params[:item_val2]
    post.item3 = params[:item_val3]
    post.item4 = params[:item_val4]
    post.item5 = params[:item_val5]
    post.size1 = params[:size_val1]
    post.size2 = params[:size_val2]
    post.size3 = params[:size_val3]
    post.size4 = params[:size_val4]
    post.size5 = params[:size_val5]
    post.save
    redirect_to "/home/clothes"
  end
  
  def clothes
    
    @posts = Post.all

  end
end

