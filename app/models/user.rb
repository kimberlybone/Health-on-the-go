class User < ApplicationRecord
  has_many :user_repos

  has_secure_password
end
