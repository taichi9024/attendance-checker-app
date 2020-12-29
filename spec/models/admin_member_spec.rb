require 'rails_helper'

RSpec.describe "new AdminMember", type: :model do
    it "正しいmember" do
        a = AdminMember.new
        a.pass  = "hogehoge"
        a.name  = "hogehoge"
        a.save
        expect(a).to be_valid
    end

    it "誤ったmember" do
        a = AdminMember.new
        a.pass  = ""
        a.name  = ""
        a.save
        expect(a).to be_invalid
    end
end