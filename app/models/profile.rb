class Profile < ApplicationRecord
  validates :email, presence: true, email: true
  validates :full_name, :email, :phone, :title, :description, presence: true
  belongs_to :resume
end
