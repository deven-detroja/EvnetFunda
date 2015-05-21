class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,:confirmable,:lockable,
         :recoverable, :rememberable, :trackable, :validatable
         
	has_many :event_bookings         
   	has_many :event_masters,through: :event_bookings
end
