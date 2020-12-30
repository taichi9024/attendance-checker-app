class ErrorsController < ApplicationController
    layout "staff"

    def not_found
        render status: 404
    end
end
