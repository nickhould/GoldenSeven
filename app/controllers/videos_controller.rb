class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def show
    @video = Video.find_by_id(params[:id])
  end

  def edit
    @video = Video.find_by_id(params[:id])    
  end

  def update
    @video = Video.find_by_id(params[:id])

    if @video.update_attributes(params[:video])
      redirect_to video_path(@video)
    else
      render :edit
    end  
  end

  def create
    @video = Video.new(params[:video])

    if @video.save
      redirect_to video_path(@video)
    else
      render :new
    end
  end

  def new
    @video = Video.new
  end

  def destroy
    video = Video.find_by_id(params[:id])

    if video.destroy
      redirect_to videos_path
    else

    end
  end
end
