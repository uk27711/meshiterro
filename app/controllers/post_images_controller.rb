class PostimagesController < ApplicationController

  def new
    @post_images = PostImage.new
  end

  # 投稿データの保存
  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_images_path
  end

  def index
    @post_images = PostImage.find(params[:id])
  end

  def show
    @post_image = PostImage.new(post_image_params)
  end
  
  # 投稿データのストロングパラメータ
  private

  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end

end

def destroy
  post_image = PostImage.new(post_image_params)
  post_image.destroy
  redirect_to post_images_path
end

end