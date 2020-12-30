class ApplicationController < ActionController::Base
layout :lay

include ErrorHandlers

    def lay
        if params[:controller].include?("f")
          return "staff"
        else
          return "admin"
        end
    end
end
