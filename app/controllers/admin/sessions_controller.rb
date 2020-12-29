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
    if @admin = AdminMember.find_by(pass: @form.pass)
      logger.debug "#{@admin.id}"
      session[:admin_id] = @admin.id
      logger.debug "#{session[:admin_id]}"
      redirect_to admin_root_url
    else
      render :new
    end
  end

  def destroy
    reset.session
    redirect_to :admin_root
  end

  private
  def admin_params
    params.require(:admin_login_form).permit(:name, :pass)
  end
end
