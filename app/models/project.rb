class Project < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :admin, class_name: "User", foreign_key: :admin_id
  has_many :project_milestones, dependent: :destroy
  has_many :milestones, through: :project_milestones
  has_many :sub_milestones, dependent: :destroy
  has_many :user_projects, dependent: :destroy
  has_many :users, through: :user_projects
  validates :title, presence: true
  validates :deadline, presence: true
  has_attachment :document, accept: [:pdf]

  def progress
    return 0 if milestones.count.zero?
    progress = 0
    milestones.each do |milestone|
      unless milestone.progress.nil?
        progress += milestone.progress
      end
    end
    (progress.fdiv(milestones.count)).round
  end
  has_attachment :document, accept: [:pdf, :png]
end
