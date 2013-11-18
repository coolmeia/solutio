class Solution < ActiveRecord::Base
  belongs_to :user
  has_many :photos

  accepts_nested_attributes_for :photos, :reject_if => :all_blank, :allow_destroy => true

  validates :name, :description, :category, :user, :presence => true

  has_enumeration_for :category, :with => SolutionCategory
end
