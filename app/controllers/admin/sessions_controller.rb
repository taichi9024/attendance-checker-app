class Admin::SessionsController < Admin::Base
  def new
    if current_admin
      redirect_to :admin_root
    else
      @form = Admin::LoginForm.new
      render :new
    end
  end

  def create
    @form = Admin::LoginForm.new(admin_params)
    logger.debug "#{@form.pass}"
    if AdminMember.find_by(pass: @form.pass)
      redirect_to admin_root_url
    else
      render :new
    end
  end

  private
  def admin_params
    params.require(:admin_login_form).permit(:name, :pass)
  end
end
