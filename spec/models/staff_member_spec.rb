require 'rails_helper'

RSpec.describe "#passwd=", type: :model do
    # before do
    #     @staff = create(:staffmember)
    # end
    it "正しいpass" do
        m = StaffMember.new
        m.passwd= "hogehoge"
        expect(m.pass.size).to eq(60)
    end

    it "正しいpass" do
        m = StaffMember.new
        m.passwd= nil
        expect(m.pass).to eq(nil)
    end

    it "nameがnilの時hogehogeに" do
        m = StaffMember.new
        m.passwd="hogehoge"
        m.name= nil
        m.save
        expect(m.name).to eq("hogehoge")
    end

    it "nameがnilの時hogehogeに" do
        m = StaffMember.new
        m.passwd="hogehoge"
        m.name= ""
        m.save
        expect(m.name).to eq("hogehoge")
    end

    it "nameがnilの時hogehogeに" do
        m = StaffMember.new
        m.passwd="hogehoge"
        m.name= false
        m.save
        expect(m.name).to eq("hogehoge")
    end
end