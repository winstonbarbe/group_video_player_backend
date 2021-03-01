class Api::VideosController < ApplicationController
  before_action :current_user
  def create
    response = Cloudinary::Uploader.upload(params[:video], resource_type: :auto)
    cloudinary_url = response["secure_url"]
    @video = Video.new(
      user_id: current_user.id,
      url: cloudinary_url
    )
    if @video.save
      render "show.json.jb"
    else
      render json: {errors: @video.errors.full_messages}, status: 422
    end
  end

  def update
    @video = Video.find(params[:id])
    @video.update_count += 1
    if @video.save
      render "show.json.jb"
    else
      render json: {errors: @video.errors.full_messages}, status: 422
    end
  end
  
end
