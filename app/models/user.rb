class User < ApplicationRecord
    has_secure_password


    validates_presence_of :first_name, :last_name, :username, :email
    validates_uniqueness_of :username, :email

end
