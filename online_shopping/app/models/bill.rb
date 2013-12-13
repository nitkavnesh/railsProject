class Bill < ActiveRecord::Base
  belongs_to :user
  has_many :products, through: :bill_details
end
