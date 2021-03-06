class User < ApplicationRecord
    has_secure_password
    validates :email, format: {with: /\A([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$\z/, message: "Only allow valid emails"}
    validates_uniqueness_of(:email)

    has_many :products

    def to_s
        first_name + " " + last_name
    end
end
