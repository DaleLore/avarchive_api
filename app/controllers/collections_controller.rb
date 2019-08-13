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
    if @collection.user == current_logged_in_user
      @collection = Collection.find(params[:id])
      @collection.destroy
    else
      render json: { errors: ["You cannot delete"] }, status: :unauthorized
    end
  end

  private
  def collection_params
    params.permit(:collection_name, :description)
  end

end
