class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    validates :contact, presence: true
    attribute :score, default: 0 
end