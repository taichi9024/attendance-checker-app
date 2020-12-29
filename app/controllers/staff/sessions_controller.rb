class Staff::SessionsController < Staff::Base
skip_before_action :login_first
  def new
    @form = Staff::LoginForm.new
  end

  def create
    @form = Staff::LoginForm.new(staff_params)
    if staff = StaffMember.find_by(name: @form.name)
      Staff::Authenticator.new(staff).auth(@form.pass) 
      session[:staff_id] = staff.id
      session[:time] = Time.current
      redirect_to :staff_dakoku
    else
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to :staff_root
  end

  private
  def staff_params
    params.require(:staff_login_form).permit(:name, :pass)
  end
end
