class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :surname
  has_many :comments
  has_many :ideas
  def to_s
  	if name.present? and surname.present?
  	  	name + " " + surname 
  	else 
  		email 
  	end

  end
end
