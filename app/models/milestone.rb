class Milestone < ApplicationRecord
  has_many :sub_milestones
  has_many :comments, through: :sub_milestones
end
