class Message < ApplicationRecord
  belongs_to :user
  scope :active, -> { where("display_date < curdate()") } 
end
