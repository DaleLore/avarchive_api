class CollectionsController < ApplicationController

  def index
    collections = Collection.all
    render json: collections
  end

  def show
    collection = Collection.find(params[:id])
    render json: collection
  end

  def create
    collection = Collection.create(collection_params)
    render json: collection
  end

  def update
    collection = Collection.find(params[:id])
    collection.update(collection_params)
    render json: collection
  end

  def destroy
    collection = Collection.find(params[:id])
    collection.destroy
  end

  private
    def collection_params
      params.permit(:collection_name, :description, :user_id)
    end

end
