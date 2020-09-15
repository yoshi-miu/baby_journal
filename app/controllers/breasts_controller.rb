class BreastsController < ApplicationController
  before_action :set_breast, only: [:edit, :update]

  def new
    @breast = Breast.new
    @child = Child.find(params[:child_id])
  end

  def create
    @breast = Breast.new(breast_params)
    if @breast.valid?
      @breast.save
      redirect_to child_path(params[:child_id])
    else
      render :new
    end
  end

  def edit
  end

  def update
    @breast.update(breast_params)
    if @breast.valid?
      @breast.save
      redirect_to child_path(params[:child_id])
    else
      render :edit
    end
  end

  private

  def breast_params
    params.require(:breast).permit(:side, :breast_time, :start_time, :end_time).merge(child_id: params[:child_id])
  end

  def set_breast
    @breast = Breast.find(params[:id])
  end
end
