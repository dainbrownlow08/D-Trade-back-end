class User < ApplicationRecord
    has_one :wallet
    has_many :orders, through: :wallet
end
