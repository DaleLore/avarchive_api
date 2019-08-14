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
    collection.user = current_logged_in_user
      if collection.save
        render json: collection
      else
        render json: { errors: collection.errors.full_messages }, status: :unprocessable_entity
      end
  end

  def destroy
      @collection = Collection.find(params[:id])
    # if @collection.user == current_logged_in_user
      # current_logged_in_user.collections.find(params[:id])
      @collection.destroy
  end

  private
  def collection_params
    params.permit(:collection_name, :description)
  end

end
