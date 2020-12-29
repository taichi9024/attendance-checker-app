class Admin::Base < ApplicationController
helper_method :current_admin  
    def current_admin
        if session[:admin_id]
            @current_admin ||= AdminMembers.find_by(id: session[:admin_id])
        end
    end
end