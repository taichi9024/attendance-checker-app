class Admin::Base < ApplicationController
helper_method :current_admin  

before_action :login_first
    def current_admin
        if session[:admin_id]
            @current_admin = AdminMember.find_by(id: session[:admin_id])
        end
    end

    def login_first
        redirect_to admin_root_path unless session[:admin_id]
    end
end