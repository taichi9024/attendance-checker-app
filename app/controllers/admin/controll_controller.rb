class Admin::ControllController < ApplicationController
  def index
    @dakokus = Dakoku.all
  end

  def show
    staff = StaffMember.find_by(id: params[:id])
    @dakoku = staff.dakokus.all
  end
end