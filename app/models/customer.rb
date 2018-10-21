class Customer < ApplicationRecord
	validates :customer_first_nm, presence: true, length: {minimum:3, maximum:25}
	validates :customer_last_nm, presence: true, length: {minimum:3, maximum:25}
	validates :customer_email, presence: true, length: {minimum:10, maximum:30}
end	
