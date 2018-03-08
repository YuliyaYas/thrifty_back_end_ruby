class Api::V1::SearchesController < ApplicationController

  def index
    @searches = Search.all
    render json: @searches
  end

  def create
    @search = Search.create(search_params)
    render json: @search
  end

  def show
    @search = Search.find(params[:id])
    render json: @search
  end

  def update
    @search = Search.find(params[:id])
    render json: @search
  end

  def destroy
    @search = Search.find(params[:id])
    @search.destroy
    @searches = Search.all
    render json: @searches
  end

private

def search_params
  params.require(:search).permit(:title, :info, :link, :image_id)
end

end
