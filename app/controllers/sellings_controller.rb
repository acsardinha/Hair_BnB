class SellingsController < ApplicationController
  # before_action :authenticate_user!

  def new
    @selling = Selling.new
    @wig = Wig.find(params[:wig_id])
    authorize @selling
  end

  def create
    @selling = Selling.new
    @wig = Wig.find(params[:wig_id])
    @selling.user = current_user
    @selling.wig = @wig
    authorize @selling
    if @selling.save
      redirect_to wigs_path, notice: 'Order placed sucessfully!'
    else
      render "wigs/show", status: :unprocessable_entity
    end
  end

  private

  def selling_params
    params.require(:selling).peremit(:user_id, :wig_id)
  end
end
