class StaffMember < ApplicationRecord
    before_validation do
        notnull_name(name) if self.name == nil
    end

    has_many :dakokus
    validates :name, presence: true
    validates :pass, presence: true

    def passwd=(raw_pass)
        if raw_pass.kind_of?(String)
            self.pass = BCrypt::Password.create(raw_pass)
        else
            self.pass = nil
        end
    end

    def notnull_name(name)
        self.name = "hogehoge"
    end
end
