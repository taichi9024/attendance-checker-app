class Admin::SessionsController < Admin::Base
  skip_before_action :login_first
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
      Admin::Authenticator.new(@admin).auth(@form.pass)
      logger.debug "#{@admin.id}"
      session[:admin_id] = @admin.id
      session[:time] = Time.current
      logger.debug "#{session[:admin_id]}"
      redirect_to admin_controll_index_path
    else
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to :admin_root
  end

  private
  def admin_params
    params.require(:admin_login_form).permit(:name, :pass)
  end
end
