class User < ApplicationRecord
    has_many :scores
    validates :username, uniqueness: {case_sensitive: false}
end
