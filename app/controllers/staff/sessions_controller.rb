class Staff::SessionsController < Staff::Base
  def new
    @form = Staff::LoginForm.new
  end

  def create
    @form = Staff::LoginForm.new(staff_params)
    if @staff = StaffMember.find_by(pass: @form.pass)
      session[:staff_id] = @staff.id
      logger.debug "#{session[:staff_id]}"
      redirect_to :staff_dakoku
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
