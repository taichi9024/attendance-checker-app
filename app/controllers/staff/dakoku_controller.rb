class Staff::DakokuController < Staff::Base
  def create
    @dakoku = Dakoku.create(hairu:true, staff_member_id:session[:staff_id])
    redirect_to :staff_dakoku
  end

  def destroy
    @dakoku = Dakoku.create(deru:true, staff_member_id:session[:staff_id])
    redirect_to :staff_dakoku
  end

  def index
  end
end
