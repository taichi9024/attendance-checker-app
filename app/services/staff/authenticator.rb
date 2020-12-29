class Staff::Authenticator
    def initialize(staff)
        @staff = staff
    end

    def auth(passwd)
        @staff &&
        passwd &&
        BCrypt::Password.new(@staff.pass) == passwd
    end    
end
