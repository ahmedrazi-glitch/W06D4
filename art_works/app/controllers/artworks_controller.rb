class ArtworksController < ApplicationController

  def index 
    render json: Artworks.all
  end

  def create 
    Artword.create!(artwork_params)
    if artwork.save
      reder json: artwork
    else
      render json: artwork.errors.full_messages,status: :unprocessable_entity
    end
  end

  def show
    render json: Artwork.find(params[:id])
  end

  def update
    Artwork.find(params[:id]).patch(artwork_params)
    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages,status: :unprocessable_entity
    end
  end

  def destroy
    Artwork.find(params[:id]).destroy
  end

  private
  def artwork_params
    params.require(:artwork).permit(:title, :image_url)
  end
end