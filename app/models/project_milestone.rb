class ProjectMilestone < ApplicationRecord
  belongs_to :project
  belongs_to :milestone
end
