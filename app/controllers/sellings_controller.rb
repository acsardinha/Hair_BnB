class SellingsController < ApplicationController
  # before_action :authenticate_user!

  def new
    @selling = Selling.new
  end

  def create
    @selling = Selling.new(selling_params)
    @selling.user = current_user
    @selling.save
    redirect_to wigs_path
  end

  private

  def selling_params
    params.require(:selling).peremit(:user_id, :wig_id)
  end
end
