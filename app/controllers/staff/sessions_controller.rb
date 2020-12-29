class Staff::SessionsController < Staff::Base
  def new
    @form = Staff::LoginForm.new
  end

  def create
    @form = Staff::LoginForm.new(staff_params)
    if @staff = StaffMember.find_by(pass: @form.pass)
      session[:staff_id] = @staff.id
      redirect_to :staff_root
    else
      render :new
    end
  end

  def destroy
    reset.session
    redirect_to :staff_root
  end

  private
  def staff_params
    params.require(:staff_login_form).permit(:name, :pass)
  end
end
