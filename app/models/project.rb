class Project < ApplicationRecord

  validates :title, presence: true

  belongs_to :resume

end
