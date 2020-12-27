class ApplicationController < ActionController::Base
layout :lay

def lay
    if params[:controller].include?("f")
        return "staff"
    else
        return "admin"
    end
end

end
