class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :partners, class_name: "User", foreign_key: "partner_id", required: false                             
  belongs_to :partner, class_name: "User", required: false  
end
