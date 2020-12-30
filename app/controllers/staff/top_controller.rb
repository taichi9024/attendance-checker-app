class Staff::TopController < Staff::Base
  skip_before_action :login_first
  skip_before_action :force_logout
  def index
  end
end
