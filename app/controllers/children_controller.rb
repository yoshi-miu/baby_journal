class ChildrenController < ApplicationController
before_action :set_child, only: [:show]
before_action :set_children, only: [:index, :show]

  def index
  end

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

  def show
    get_times
  end

  private

  def child_params
    params.require(:child).permit(:name, :birth_day).merge(user_id: current_user.id)
  end

  def set_child
    @child = Child.find(params[:id])
  end

  def set_children
    if user_signed_in?
      @children = current_user.children
    end
  end

  def get_times
    @t = Time.current
    @times = []
    t = Time.current
    i = 22
    25.times do |j|
      @times << t.ago(i.hours)
      i -= 1
    end
  end
end
