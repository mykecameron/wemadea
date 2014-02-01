class StoriesController < ApplicationController
  respond_to :json

  def show
    respond_with Story.find(params[:id])
  end
end
