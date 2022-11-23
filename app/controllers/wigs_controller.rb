class WigsController < ApplicationController
  before_action :set_wig, only: %i[show edit destroy]
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @wigs = policy_scope(Wig)
  end

  def show
    authorize @wig
    @selling = Selling.new
  end

  def new
    @wig = Wig.new
    authorize @wig
  end

  def create
    @wig = Wig.new(wig_params)
    @wig.user = current_user
    authorize @wig
    if @wig.save
      redirect_to wigs_path, notice: 'Wig was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @wig
    @wig.destroy
    redirect_to wigs_path, status: :see_other
  end

  def edit
    authorize @wig
  end

  def update
    @wig = Wig.find(params[:id])
    authorize @wig
    @wig.update(wig_params)
    redirect_to wig_path(@wig)
  end

  private

  def set_wig
    @wig = Wig.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def wig_params
    params.require(:wig).permit(:wig_type, :color, :name, :price, :description)
  end
end
