class Staff::Base < ApplicationController
  helper_method :current_staff
    def current_staff
        if session[:staff_id]
          @current_admin ||= StaffMember.find_by(id: session[:staff_id])
        end
    end
end