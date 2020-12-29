require 'rails_helper'

RSpec.describe StaffMember, type: :model do
  describe "#pass=" do
    it "パスワードがストリング型"do
      s = StaffMember.new
      s.pass = "hogehoge"
      expect(s.pass.size).to eq(60)
    end
  end
end