class ChildrenController < ApplicationController
  def index
  def new
    @child = Child.new
  end

  def create
    @child = Child.new(child_params)
    if @child.valid?
      @child.save
      redirect_to child_path(@child)
    else
      render :new
    end
  end

  private

  def child_params
    params.require(:child).permit(:name, :birth_day).merge(user_id: current_user.id)
  end
  end
end
