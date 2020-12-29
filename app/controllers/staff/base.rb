class Staff::Base < ApplicationController
  helper_method :current_staff
  before_action :login_first
    def current_staff
        if session[:staff_id]
          @current_admin ||= StaffMember.find_by(id: session[:staff_id])
        end
    end

    def login_first
      redirect_to staff_root_path unless session[:staff_id]
    end
end