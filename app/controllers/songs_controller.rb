class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :destroy]
  def index
    @songs = Song.all
  end

  def show
  end

  def create
    @song = Song.new(song_params)
    if @billboard.save
      redirect_to songs_path(@song)
    else
      render :new
    end
  end

  def new
    @song = Song.new
  end

  def edit
  end

  def update
    if @song.update(song_params)
      redirect_to song_path(@song)
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to songs_path
  end

private

  def song_params
    params.require(:song).permit(:name, :duration, :genre, :artist)
  end

  def set_song
    @song = Song.find(params[:id])
  end
end
