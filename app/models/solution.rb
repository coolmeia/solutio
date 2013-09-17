class Solution < ActiveRecord::Base
  belongs_to :user

  validates :name, :description, :category, :user, :presence => true

  has_enumeration_for :category, :with => SolutionCategory
end
