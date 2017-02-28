class Milestone < ApplicationRecord
  has_many :sub_milestones, dependent: :destroy
  has_many :comments, through: :sub_milestones
   has_many :project_milestones, dependent: :destroy

  def perform_progress
    return 0 if sub_milestones.count.zero?
    (sub_milestones.where(done: true).count.fdiv(sub_milestones.count) * 100).round
  end
end
