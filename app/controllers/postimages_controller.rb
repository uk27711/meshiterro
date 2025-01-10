class PostimagesController < ApplicationController

  def new
    @post_images = PostImage.new
  end
  


end
