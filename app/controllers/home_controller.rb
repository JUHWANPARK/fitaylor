class HomeController < ApplicationController
  before_action :authenticate_user!, except: [ :index ] 
  
  def index
    
  end
  
  def write
    uploader = FitaylorUploader.new
    uploader.store!(params[:pic])
    
    post = Post.new

    post.image_url = uploader.url 
    post.title = params[:title]
    post.cloth = params[:cloth_type]
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
    post.user = current_user
    post.day = params[:day]
    post.save
    
    
    redirect_to "/home/clothes"
  end
  
  def clothes
    @posts = Post.all.paginate(:page => params[:page], :per_page => 8).order('created_at DESC')

  end
  
  def comment_write
    comment = Comment.new
    comment.content = params[:content]
    comment.post_id = params[:id_of_post]
    comment.save
    redirect_to :back
  end
  
  def delete_post
    @del_post = Post.find(params[:post_id])
    @del_post.destroy
    redirect_to "/home/clothes"
  end

  def result_1
    @result_1_size1 = Post.where(cloth: "긴바지").average(:size1)
    @result_1_size2 = Post.where(cloth: "긴바지").average(:size2)
    @result_1_size3 = Post.where(cloth: "긴바지").average(:size3)
    @result_1_size4 = Post.where(cloth: "긴바지").average(:size4)
    @result_1_size5 = Post.where(cloth: "긴바지").average(:size5)
  end

  def result_2
    @result_2_size1 = Post.where(cloth: "반팔티셔츠").average(:size1)
    @result_2_size2 = Post.where(cloth: "반팔티셔츠").average(:size2)
    @result_2_size3 = Post.where(cloth: "반팔티셔츠").average(:size3)
    @result_2_size4 = Post.where(cloth: "반팔티셔츠").average(:size4)
  end
  
  def result_3
    @result_3_size1 = Post.where(cloth: "민소매").average(:size1)
    @result_3_size2 = Post.where(cloth: "민소매").average(:size2)
  end

  def result_4
    @result_4_size1 = Post.where(cloth: "긴팔티셔츠").average(:size1)
    @result_4_size2 = Post.where(cloth: "긴팔티셔츠").average(:size2)
    @result_4_size3 = Post.where(cloth: "긴팔티셔츠").average(:size3)
    @result_4_size4 = Post.where(cloth: "긴팔티셔츠").average(:size4)

  end
  
  def result_5
    @result_5_size1 = Post.where(cloth: "셔츠").average(:size1)
    @result_5_size2 = Post.where(cloth: "셔츠").average(:size2)
    @result_5_size3 = Post.where(cloth: "셔츠").average(:size3)
    @result_5_size4 = Post.where(cloth: "셔츠").average(:size4)
  end
  
  def result_6
    @result_6_size1 = Post.where(cloth: "일반점퍼").average(:size1)
    @result_6_size2 = Post.where(cloth: "일반점퍼").average(:size2)
    @result_6_size3 = Post.where(cloth: "일반점퍼").average(:size3)
    @result_6_size4 = Post.where(cloth: "일반점퍼").average(:size4)
  end
  
  def result_7
    @result_7_size1 = Post.where(cloth: "헤비아우터").average(:size1)
    @result_7_size2 = Post.where(cloth: "헤비아우터").average(:size2)
    @result_7_size3 = Post.where(cloth: "헤비아우터").average(:size3)
    @result_7_size4 = Post.where(cloth: "헤비아우터").average(:size4)
  end
  
  def result_8
    @result_8_size1 = Post.where(cloth: "코트").average(:size1)
    @result_8_size2 = Post.where(cloth: "코트").average(:size2)
    @result_8_size3 = Post.where(cloth: "코트").average(:size3)
    @result_8_size4 = Post.where(cloth: "코트").average(:size4)
  end

  def result_9
    @result_9_size1 = Post.where(cloth: "반바지").average(:size1)
    @result_9_size2 = Post.where(cloth: "반바지").average(:size2)
    @result_9_size3 = Post.where(cloth: "반바지").average(:size3)
    @result_9_size4 = Post.where(cloth: "반바지").average(:size4)
    @result_9_size5 = Post.where(cloth: "반바지").average(:size5)
  end
  
    
  def result_10
    @result_10_size1 = Post.where(cloth: "치마").average(:size1)
    @result_10_size2 = Post.where(cloth: "치마").average(:size2)
    @result_10_size3 = Post.where(cloth: "치마").average(:size3)
  end
end

