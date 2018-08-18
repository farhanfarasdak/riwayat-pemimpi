class User < ApplicationRecord
  include Clearance::User

  enum type: {
  	admin: 1,
  	guest: 0
  }
end
