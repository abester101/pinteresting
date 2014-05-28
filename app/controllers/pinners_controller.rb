class PinnersController < ApplicationController
  before_action :set_pinner, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  


  def index
    @pinners = Pinner.all
  end

  def show
  end

  def new
    @pinner = current_user.pinners.build
  end

  def edit
  end

  def create
    @pinner = current_user.pinners.build(pinner_params)
    if @pinner.save
      redirect_to @pinner, notice: 'Pinner was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @pinner.update(pin_params)
      redirect_to @pinner, notice: 'Pinner was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @pinner.destroy
    redirect_to pinners_url
  end

  def correct_user
      @pinner = current_user.pinners.find_by(id: params[:id])
      redirect_to pinners_path, notice: "Not authorized to edit this pinner" if @pinner.nil?
    end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pinner
      @pinner = Pinner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pinner_params
      params.require(:pinner).permit(:description)
    end
end
