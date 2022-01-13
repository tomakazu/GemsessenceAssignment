class Question < ApplicationRecord
    validates :qname, presence: true
    validates :option1, presence: true
    validates :option2, presence: true
    validates :option3, presence: true
    validates :option4, presence: true
    validates :correct_ans, presence: true
    validates :time, presence: true
end