class Api::VideosController < ApplicationController
  # before_action :current_user

  def index
    videos = Video.all
    render json: videos, status: 200
  end

  def create
    response = Cloudinary::Uploader.upload(params[:body], resource_type: :auto)
  
    cloudinary_url = response["secure_url"]
    @video = Video.new(
      user_id: current_user.id,
      url: cloudinary_url,
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

  def destroy
    video = Video.find(params[:id])
    video.destroy

    # response = Cloudinary::Api.delete_resources(public_ids, options = {})
    # response = Cloudinary::Uploader.destroy(video.public_id, signature: "zutzx8rc")
    render json: { message: "video deleted" }

  end
  
end
