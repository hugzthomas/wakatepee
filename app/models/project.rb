class Project < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :admin, class_name: "User", foreign_key: :admin_id
  has_many :project_milestones
  has_many :milestones, through: :project_milestones
  has_many :sub_milestones
  has_many :user_projects
  has_many :users, through: :user_projects
  validates :title, presence: true
  validates :deadline, presence: true

end
