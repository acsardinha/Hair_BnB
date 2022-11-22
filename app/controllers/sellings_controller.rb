class SellingsController < ApplicationController
  # before_action :authenticate_user!

  def new
    @selling = Selling.new
    authorize @selling
  end

  def create
    @selling = Selling.new(selling_params)
    @selling.user = current_user
    authorize @selling
    if @selling.save
      redirect_to wigs_path, notice: 'Order placed sucessfully!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def selling_params
    params.require(:selling).peremit(:user_id, :wig_id)
  end
end
