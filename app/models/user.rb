class User < ApplicationRecord
    has_one :wallet
    has_many :orders, through: :wallet
    validates_uniqueness_of :username
end
