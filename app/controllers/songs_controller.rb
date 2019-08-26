class SongsController < ApplicationController
  
  before_action :set_song, only: [:show, :edit, :update, :destroy] 
  
  
  def index
    @songs = Song.all
  end

  def show
  end

  def edit
    render partial: "form"
  end

  def new
    @song = Song.new 
    render partial: "form"
  end

  def create
    @song = @artist.songs.new(song_params)
    if @song.save
      redirect_to artist_path(@artist)
 
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

end

private

def set_artist
  @artist = Artist.find(params[:artist_id])
end

def set_song
  @song = Song.find(params:[id])
end

def song_params 
  params.require(:artist).permit(:name)
  end 
end



