class AlbumsController < ApplicationController
  def create
    album = Album.new(album_params)
    if album.save
      flash[:notice] = "Album created successfully."
      redirect_to album_url(album)
    else
      flash.now[:errors] = album.errors.full_messages
      render :new
    end
  end

  def new
    @album = Album.new(band_id: params[:band_id])
  end

  def edit
    @album = Album.find_by_id(params[:id])
    @band_name = @album.band.name
    @bands = Band.all
  end

  def show
    @album = Album.find_by_id(params[:id])
  end

  def update
    @album = Album.find_by_id(params[:id])
    @album.update(album_params)
    redirect_to album_url(@album)
  end

  def destroy
    album = Album.find_by_id(params[:id])
    band = album.band
    album.destroy!
    flash[:notice] = "Album has been deleted"
    redirect_to band_url(band)
  end

  private
    def album_params
      params.require(:album).permit(:band_id, :title, :recording)
    end
end
