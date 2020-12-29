class Staff::TopController < Staff::Base
  skip_before_action :login_first
  def index
  end
end
