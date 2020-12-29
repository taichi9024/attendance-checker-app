class AdminMember < ApplicationRecord
    validates :name, presence: true
    validates :pass, presence: true
end
