class ApiKeysController < ApplicationController
  before_action :authenticate_user!

  def index
    @apikey = findkeys
  end

  def create
    @apikey = ApiKey.create(user_id: current_user.id)
    if @apikey.save
      redirect_to api_keys_path, notice: 'Apikey was  successfully created.'
    else
      redirect_to api_keys_path, notice: 'Apikey was  NOT successfully created.'
    end
  end

  def destroy
    ApiKey.find(params[:id]).destroy
    redirect_to api_keys_path, notice: 'Apikey was  successfully destroyed.'
  end

  private

  def findkeys
    ApiKey.where(user_id: current_user.id)
  end
end
