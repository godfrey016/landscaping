class Customer < ApplicationRecord
	validates :customer_first_nm, presence: true
	validates :customer_last_nm, presence: true
	validates  :comment, presence: true
	validates :customer_email, presence: true
end	
