class Admin::Authenticator
    def initialize(admin)
        @admin = admin
    end
    def auth(passwd)
        @admin &&
        passwd &&
        BCrypt::Password.create(@admin.pass) == passwd
    end
end