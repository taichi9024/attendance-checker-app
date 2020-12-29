class Staff::ChangesController < Staff::Base
  def edit
    @staff = current_staff
  end

  def update
    @staff = current_staff
    if @staff.update(hoge)
      redirect_to staff_dakoku_path
    end
  end

    private
    def hoge
      params.require(:staff_member).permit(:name, :pass)
    end
end
