class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
    @wigs = Wig.all
    @sellings = Selling.all
  end
end
