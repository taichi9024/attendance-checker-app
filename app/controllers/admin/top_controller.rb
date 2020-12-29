class Admin::TopController < Admin::Base
  skip_before_action :login_first
  def index
  end
end
