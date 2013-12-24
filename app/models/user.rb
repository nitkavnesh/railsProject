class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # user has many bills and addresses and has one role either user or admin
  belongs_to :role
  has_many :bills
  has_many :addresses
end
