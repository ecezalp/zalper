class Section < ApplicationRecord
  has_many :sectionozalps
  has_many :sections, :through => :sectionozalps
end
