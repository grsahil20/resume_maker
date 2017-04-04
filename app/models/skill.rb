class Skill < ApplicationRecord

  validates :title, presence: true

  belongs_to :resume

end
