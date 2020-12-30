module ErrorHandlers
    extend ActiveSupport::Concern

    included do
        rescue_from ActionController::RoutingError, with: :render_404
        rescue_from ActiveRecord::RecordNotFound, with: :render_404
        rescue_from ArgumentError, with: :render_500
        rescue_from RuntimeError, with: :render_500
        rescue_from ActionController::RoutingError, with: :render400
    end

    def render_404
        render "errors/e404", status: 404
    end
    
    def render_500
        render "errors/e500", status: 500
    end
    
    def render_400
        render "errors/e400", status: 400
    end
end