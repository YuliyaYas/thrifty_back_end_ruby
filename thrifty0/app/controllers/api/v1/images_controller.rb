class Api::V1::ImagesController < ApplicationController
  skip_before_action :authorized, only: [:index, :create, :show, :destroy]

  def index
    @images = Image.all
    render json: @images
  end

  def create
    
    @image = Image.create(image_params)
    render json: @image
  end

  def show
    @image = Image.find(params[:id])
    render json: @image
  end

  def update
    @image = Image.find(params[:id])
    render json: @image
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    render json: {id: @image.id}
  end

private

def image_params
  params.require(:image).permit(:name, :blob, :otr, :note, :price, :store, :user_id)
end

end
