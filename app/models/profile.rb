class Profile < ApplicationRecord
  validates :email, presence: true, email: true
  validates :full_name, :email, :phone, presence: true
  belongs_to :resume
end
