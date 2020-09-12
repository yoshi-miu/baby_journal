class ChildrenController < ApplicationController
  before_action :set_child, only: [:show, :edit, :update]
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
    set_times
    set_items
  end

  def edit
  end

  def update
    @child.update(child_params)
    if @child.valid?
      @child.save
      redirect_to child_path(@child)
    else
      render :edit
    end
  end

  private

  def child_params
    params.require(:child).permit(:name, :birth_day).merge(user_id: current_user.id)
  end

  def set_child
    @child = Child.find(params[:id])
  end

  def set_children
    @children = current_user.children if user_signed_in?
  end

  def set_times
    @t = Time.current
    @times = []
    t = Time.current
    i = 7
    11.times do |_j|
      @times << t.ago(i.hours)
      i -= 1
    end
  end

  def set_items
    @breasts = @child.breasts
  end
end
