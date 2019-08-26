class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  
  
  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    # /billboards/:billboard_id/artists/new
   @artist = Artist.new
   render partial: "form"
  end
  
  def edit
    render partial: "form"
  end

  def create
    # /billboards/:billboard_id/artists
  @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artist_path(@artist)
    else 
      render :new
    end
  end

  def update
    if @artist.update(artist_params)
      redirect_to artist_path(@billboard, @artist)
    else 
      render :edit
    end
  end 

  def destroy
    @artist.destroy
    redirect_to billboard_songs_path
  end


  private 

  def set_artist
    @artist = Artist.find(params[:id])

  end


  def artist_params   
      params.require(:artist).permit(:name)
    end
  end



