class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :destroy]
  def index
    @artist = Artist.all
  end

  def show
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artists_path(@artist)
    else
      render :new
    end
  end

  def new
    @artist = Artist.new
  end

  def edit
  end

  def update
    if @artist.update(artist_params)
      redirect_to artist_path(@artist)
    else
      render :edit
    end
  end

  def destroy
    @artist.destroy
    redirect_to artists_path
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end

  def set_artist
    @artist = artist.find(params[:id])
  end
  end
