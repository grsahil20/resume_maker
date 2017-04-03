class Resume < ApplicationRecord

  before_create :add_slug

  has_one :profile
  has_many :skills
  has_many :projects
  has_many :languages
  has_many :companies
  has_many :qualifications
  has_many :certifications

  accepts_nested_attributes_for :profile
  accepts_nested_attributes_for :skills, reject_if: proc { |attributes| attributes['title'].blank? }
  accepts_nested_attributes_for :projects, reject_if: proc { |attributes| attributes['title'].blank? }
  accepts_nested_attributes_for :languages, reject_if: proc { |attributes| attributes['title'].blank? }
  accepts_nested_attributes_for :companies, reject_if: proc { |attributes| attributes['title'].blank? }
  accepts_nested_attributes_for :qualifications, reject_if: proc { |attributes| attributes['title'].blank? }
  accepts_nested_attributes_for :certifications, reject_if: proc { |attributes| attributes['title'].blank? }

  def name
    profile.try(:full_name) || slug
  end

  def title
    profile.try(:title)
  end


  def to_json
    {
      id: id,
      slug: slug
    }
  end

  private

  def add_slug
    return if slug.present?
    begin
      self.slug = rand_string
    end while Resume.where(slug: slug).exists?
  end

  def rand_string
    _temp = [('a'..'z'), ('A'..'Z'), (0..9)].map(&:to_a).flatten
    string = (0...6).map { _temp.sample }.join
  end
end
