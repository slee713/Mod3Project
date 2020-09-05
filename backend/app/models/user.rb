class User < ApplicationRecord
    has_many :scores, dependent: :destroy
    validates :username, uniqueness: {case_sensitive: false}
end
