class GroupsController < ApplicationController

  def index
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(create_params)
    if @group.save
      redirect_to :root, notice: "グループが作成されました"
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

    def create_params
      params.require(:group).permit(:name, user_ids: [])
    end

end
